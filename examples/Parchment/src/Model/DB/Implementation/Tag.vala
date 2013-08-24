using Almanna;

namespace Parchment.Model.DB.Implementation {
	
	/**
	 * Almanna Implementation for class "Tag".
	 * Generated by almanna-generate.
	 */
	public class Tag : Parchment.Model.DB.Entity.Tag {
		public override void register_entity() {
			base.register_entity();

			add_has_many( "entry_tags", typeof(EntryTag), "tag_id", "tag_id" );
		}

		/**
		 * Create or retrieve a tag by name.
		 * @param name Tag name
		 */
		public static Tag get_by_name( string name ) {
			var tag = new Search<Tag>()
						.eq( "name", name )
						.single();
			if ( tag != null ) {
				return tag;
			}
			tag = new Tag();
			tag.name = name;
			tag.save();
			return tag;
		}
	}
}
