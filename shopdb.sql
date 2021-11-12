-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2021 at 02:35 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kid’s Toys', 'kids-toys', 'Reiciendis odit ullam excepturi. Nesciunt quibusdam iusto neque minus. Unde sit possimus minima velit velit. Quaerat vel fuga mollitia. Et aut vitae sit excepturi. Voluptas impedit aliquam architecto non quia. Sit sint quos excepturi non. Blanditiis distinctio iusto facere nemo.', '2021-05-14 08:45:06', '2021-05-14 08:45:06'),
(2, 'Fashion & Accessories', 'fashion-accessories', 'Omnis nihil perspiciatis ut enim magni perspiciatis. Fugit sed quisquam sit. Non sit porro qui quaerat omnis. Et nisi aspernatur enim. Dignissimos est nemo sed.', '2021-05-14 08:45:06', '2021-05-14 08:45:06'),
(4, 'Furnitures & Home Decors', 'furnitures-home-decors', 'Quas sunt perspiciatis quod. Qui accusantium ratione qui nobis est. Maxime nulla ad at natus quae iusto. Quo et quisquam est sed voluptatem.', '2021-05-14 08:45:36', '2021-05-14 08:45:36'),
(6, 'Digital & Electronics', 'digital-electronics', 'Consequatur consequatur repellat totam non. Autem quos quia enim. Dolorem porro quisquam minima magni ut vitae. Corporis nam praesentium vel omnis voluptatem cum voluptas saepe. Ea deserunt aliquid et ullam. Enim corporis reprehenderit harum id.', '2021-05-14 08:45:47', '2021-05-14 08:45:47'),
(9, 'Tools & Equipments', 'tools-equipments', 'Temporibus sunt labore enim consequatur error. Eos aut consectetur autem sequi nihil ut similique nisi. Tempore commodi qui quibusdam est. Pariatur a dicta ut sit sapiente porro rerum. Vitae corporis qui quam quo.', '2021-05-14 08:46:11', '2021-05-14 08:46:11'),
(10, 'Organics & Spa', 'organics-spa', 'Vel architecto qui aperiam dolorum aut iusto est. Fugiat minima velit deserunt harum. Facere quisquam facilis repellat labore ratione. Facilis debitis quae quia qui sunt.', '2021-05-14 08:46:11', '2021-05-14 08:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2021_04_29_152825_create_sessions_table', 1),
(19, '2021_05_08_105332_create_categories_table', 1),
(25, '2021_05_10_095615_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimensions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` enum('XS','S','M','L','XL','XXL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `sales_price` decimal(8,2) DEFAULT NULL,
  `stuck_status` enum('instuck','outofstuck') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 12,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `SKU`, `image`, `images`, `short_description`, `description`, `weight`, `colors`, `dimensions`, `size`, `price`, `sales_price`, `stuck_status`, `quantity`, `featured`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Axial Roller', 'axial-roller', 'DiGi-119205', 'digital_15.jpg', NULL, 'Sint excepturi praesentium sequi eum. Vitae et quam quod ut. Qui vel natus est beatae.', 'Quos quasi earum suscipit id dolores. Laboriosam nostrum illo ipsum dolores. Itaque soluta quod omnis quia eaque pariatur reprehenderit quos. Repudiandae iste eum dolorem minima voluptatem est. Veritatis et sapiente dolor sed. Perferendis vitae consequatur est eaque magnam. Repudiandae aut laborum aut aut earum minima. Quos et similique voluptate consectetur non. Et fugiat corporis totam. Omnis sunt maiores sit consequatur hic a. Rerum sunt ad iusto iure ex error. Consequatur distinctio nemo eos a sint consectetur.', '1', 'Grey', 'Width:33cm; Length:171cm; Hight:71', 'L', '162.00', NULL, 'instuck', 239, 0, 6, '2021-05-14 09:59:56', '2021-05-14 12:20:36'),
(2, 'Webcam Logic 3', 'webcam-logic-3', 'DiGi-356440', 'digital_7.jpg', NULL, 'Repudiandae facilis et ut cum id et vel. Velit numquam nam aut ut.', 'Et voluptas tempora sit alias. Sequi veniam molestias placeat nam omnis. Est error aut voluptas enim et. Quo ipsa doloremque et. Velit aperiam deleniti quidem sit qui voluptatum quis. Est voluptate quos ut quisquam voluptatum amet vel. Nostrum cupiditate pariatur vel officia quidem. Excepturi aut distinctio aliquid et sed. Sit ratione eos aut. Fugit dolore mollitia qui quod. Eum sunt dolores eveniet iusto sit quod. Odio quis consectetur ratione corrupti velit ea aperiam.', '8', 'Blue', 'Width:159cm; Length:173cm; Hight:103', 'L', '158.00', NULL, 'instuck', 217, 0, 6, '2021-05-14 09:59:56', '2021-05-15 11:40:18'),
(3, 'Laptop Pro 3', 'laptop-pro-3', 'DiGi-392356', 'digital_4.jpg', NULL, 'Pariatur rem sed consequuntur maiores. Nobis autem labore dolor.', 'Cum consectetur velit sit suscipit et voluptas. Quia est numquam architecto aliquam. Sunt laborum eos suscipit quibusdam ut eius magnam. Error enim est harum recusandae a. Corrupti provident quidem hic laboriosam voluptatibus autem. Sit veniam iste esse magnam. Ut impedit optio voluptas atque nulla quia maiores ipsam. Dolorum ipsum officiis et dolor consequatur debitis. Earum aut ullam ullam. Quam a veniam dolore qui sed distinctio omnis.', '5', 'white', 'Width:139cm; Length:21cm; Hight:188', 'M', '354.00', NULL, 'instuck', 298, 0, 6, '2021-05-14 09:59:56', '2021-05-14 12:20:51'),
(4, 'Plasma TV', 'plasma-tv', 'DiGi-448054', 'digital_9.jpg', NULL, 'Sed recusandae qui laboriosam vel. Qui quia dolores illum praesentium consequatur ex.', 'Esse aut et aspernatur omnis assumenda. Quasi in recusandae iusto nam. Qui nemo ducimus optio. Est aliquid officia eligendi voluptatem. Iusto sed quia ducimus est. Voluptates aut et temporibus ipsam laboriosam cum. Reiciendis odit atque quae ducimus. Molestiae quibusdam voluptatem sed voluptatem velit nihil. Sed minima ipsum et sapiente et ex quis. Impedit sunt assumenda voluptate commodi earum. Omnis quia quia dolorem earum consequuntur laboriosam illo. Dolores odio neque minima fugit enim eum incidunt voluptatum. Ducimus quia aut aperiam est. Velit vel commodi commodi voluptatem.', '8', 'white', 'Width:4cm; Length:77cm; Hight:160', 'XL', '125.00', NULL, 'instuck', 136, 0, 6, '2021-05-14 09:59:56', '2021-05-14 12:21:45'),
(5, 'deleniti aut dolores', 'deleniti-aut-dolores', 'DiGi-367563', 'digital_5.jpg', NULL, 'Illo quia tenetur at. Reiciendis est quo quo quia eius laboriosam.', 'Esse voluptatum aspernatur voluptas at consequatur et odio. Quo ut sunt et facere. Qui ex aut sunt voluptatem. At sunt veniam eos vero excepturi. Cum magnam explicabo voluptate omnis consectetur atque debitis. Aut temporibus maiores quae dolorem. Similique non aliquam est accusamus quos non. Est est ratione omnis ab ipsam rerum. Aut occaecati sit atque. Quasi nemo dolores fugit maiores est. Consequuntur nobis nostrum aut aut eveniet nesciunt. Possimus culpa sapiente voluptas sed quidem. Quidem maxime id doloribus id est. Aut et quaerat similique impedit illum.', '4', 'Black', 'Width:79cm; Length:128cm; Hight:51', 'L', '466.00', NULL, 'instuck', 257, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(6, 'distinctio in expedita', 'distinctio-in-expedita', 'DiGi-348708', 'digital_22.jpg', NULL, 'Ad maiores dolore omnis in. Ut hic itaque necessitatibus.', 'Qui et praesentium velit dolores. Rem voluptas aut deleniti odit assumenda. Cumque ipsum earum qui consequatur. Deleniti corrupti dicta non esse. Nihil necessitatibus debitis voluptatem id non. Totam et qui dolor saepe ut vitae laboriosam consequuntur. Nam ducimus itaque vel sit tenetur provident officiis. Vitae laborum expedita et vel nostrum molestiae voluptatibus aut. Aut qui impedit qui dolore. Officia et ut blanditiis autem. Maxime nam quis et laborum ullam. Qui eum non ipsam tempora. Assumenda excepturi commodi ducimus eaque quis accusantium. Iste natus autem aut alias ut ad ullam quia.', '12', 'Black', 'Width:158cm; Length:104cm; Hight:4', 'S', '152.00', NULL, 'instuck', 159, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(7, 'ipsum illum facere', 'ipsum-illum-facere', 'DiGi-357131', 'digital_17.jpg', NULL, 'Et sit sequi earum minima magni alias ab. Magni suscipit vero rerum ducimus qui qui voluptatibus.', 'Autem quia aspernatur cupiditate voluptatem. Laboriosam ut numquam numquam exercitationem nesciunt reprehenderit. Laudantium veritatis aut qui officiis ipsa. In quo fugiat sed. Sunt aut perferendis asperiores amet. Ut corrupti provident aut. Id minus eligendi sit alias voluptas omnis. Quo tempore sint voluptatibus. A similique quae laudantium voluptas nam sunt. Est minima quis eius minus cumque vitae minima. Adipisci sunt nostrum maxime aliquam mollitia. Maxime magni eos quibusdam ab.', '12', 'white', 'Width:74cm; Length:67cm; Hight:67', 'L', '316.00', NULL, 'instuck', 242, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(8, 'debitis ea ut', 'debitis-ea-ut', 'DiGi-490799', 'digital_18.jpg', NULL, 'Pariatur sed minus et quo. Blanditiis qui iste deserunt quod. Dolorum et odit ipsa vel iste.', 'Atque et in maiores illo voluptas et. Cupiditate quas ut suscipit ab. Ut quam optio aut praesentium aliquid itaque repudiandae. Non quia tenetur impedit officiis. Veniam sit ut eius voluptates aut qui. Eligendi veniam ipsam nemo ea consectetur quae consequatur. Hic repellendus et et saepe. Modi quisquam dolores quibusdam repellat temporibus dolorum. Aliquid quia dicta facere aut ex commodi. Nobis ipsum sed impedit facilis ut ut. Placeat accusantium culpa ipsam nihil non alias.', '6', 'Pink', 'Width:5cm; Length:5cm; Hight:181', 'XS', '168.00', NULL, 'instuck', 220, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(9, 'aperiam ea ad', 'aperiam-ea-ad', 'DiGi-415998', 'digital_14.jpg', NULL, 'Earum qui repellat fugiat laudantium impedit. Ea rerum sint atque architecto et nesciunt aut.', 'Sit odio voluptates aut consequuntur est pariatur. Modi iure magnam suscipit sequi cupiditate adipisci inventore sed. Dolorum repellat autem aperiam dignissimos molestiae iure ut. Unde aliquam consequatur non doloremque qui voluptatem. Excepturi unde quis autem quia vel. Et odit animi accusamus quod neque molestiae. Nam qui eaque id aut. Eius voluptas aut sequi quasi voluptatem quidem. Unde odit non nihil. Dolorum nulla rerum vel fuga est rem. Veritatis libero consectetur nihil porro in sunt culpa tempore.', '13', 'Pink', 'Width:75cm; Length:128cm; Hight:182', 'S', '171.00', NULL, 'instuck', 292, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(10, 'aliquid aperiam nihil', 'aliquid-aperiam-nihil', 'DiGi-421535', 'digital_13.jpg', NULL, 'Aut tenetur commodi aut nihil quidem voluptas quae iure. Necessitatibus adipisci et hic.', 'Non suscipit dolor et ab. Ab ex occaecati eveniet explicabo hic. Consequatur adipisci dolores id nostrum dolor. Blanditiis quaerat consequatur maiores aut soluta corporis. Natus corrupti labore aut ducimus voluptates et et. At dolores tenetur ea esse ipsa excepturi. Pariatur ratione deleniti non ullam magni vero temporibus. Nihil perferendis ab suscipit soluta quidem. Tempora nihil corrupti quo ullam impedit et in voluptate. Consectetur et distinctio earum similique ducimus asperiores vitae. Et iusto rerum voluptas voluptates sed. Consequatur est facilis sunt quae.', '15', 'Black', 'Width:98cm; Length:8cm; Hight:98', 'XXL', '194.00', NULL, 'instuck', 201, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(11, 'aut dolorum recusandae', 'aut-dolorum-recusandae', 'DiGi-490108', 'digital_21.jpg', NULL, 'Aut et labore amet nesciunt quidem. Rerum sit autem neque consequatur. At occaecati ut aliquam.', 'Eveniet qui voluptas molestias. Nihil qui ullam et vel et. Sequi est et dolorem nemo sunt et necessitatibus. Nihil assumenda sed omnis non libero fugiat. Molestias eos quibusdam dolor esse commodi possimus. Dolor reprehenderit explicabo iure temporibus et laboriosam. Omnis quis praesentium veritatis sint fugit. Earum nam placeat fugiat molestiae adipisci sequi tenetur minus. Tenetur et temporibus repellat enim autem. Quis odit sed nihil illum ut. Dolor quo id aspernatur architecto.', '5', 'Pink', 'Width:94cm; Length:97cm; Hight:151', 'XL', '464.00', NULL, 'instuck', 358, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(12, 'voluptates id eos', 'voluptates-id-eos', 'DiGi-331556', 'digital_11.jpg', NULL, 'Aut tempora beatae dolor omnis provident magnam. Pariatur facilis ut harum cum quaerat.', 'Quia enim doloribus voluptas minus non qui. Quia dolor optio possimus libero. Dolores et id aliquid assumenda ullam eveniet ut deleniti. Qui id explicabo reiciendis nesciunt qui nulla. Nostrum et dignissimos voluptatem ullam recusandae. Delectus facilis consequatur fugit perferendis laudantium fugiat distinctio. Numquam voluptatem qui nostrum recusandae quo. Debitis rerum explicabo facilis rerum et ullam quis. Quidem sint quasi soluta quam assumenda ipsum occaecati. Aliquid perferendis voluptate odit nostrum similique.', '14', 'Pink', 'Width:95cm; Length:35cm; Hight:77', 'S', '257.00', NULL, 'instuck', 308, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(13, 'excepturi unde rem', 'excepturi-unde-rem', 'DiGi-440578', 'digital_1.jpg', NULL, 'Ut sint dolorem esse. Nesciunt impedit repellendus culpa aliquid.', 'Iure qui eum non nulla eum qui. Voluptatem non ex doloremque fuga et debitis quis. Labore ab error eos quia numquam sit. Sit aut impedit quis officia. Minima commodi veritatis et dicta. Doloribus est sint eum ducimus dolorum. Labore magni sunt illum ea maiores dolores voluptatem. Esse quo qui ut corrupti incidunt. Et numquam provident hic fuga autem. Eos quos qui rerum. Voluptatem eos quis in. Saepe nemo itaque quisquam facilis sint numquam. Et expedita qui sequi eius qui ipsa dolores.', '14', 'Blue', 'Width:24cm; Length:166cm; Hight:50', 'M', '197.00', NULL, 'instuck', 134, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(14, 'dolores doloremque praesentium', 'dolores-doloremque-praesentium', 'DiGi-446370', 'digital_10.jpg', NULL, 'Aut deserunt et repudiandae. Id quo est itaque illum. Quia veritatis et minus veritatis.', 'Soluta recusandae et quis quod mollitia harum. Voluptate atque repellat odio incidunt ut placeat. Est rerum autem dicta iure ipsa omnis. Aut illo esse qui temporibus iure. Ab voluptates ut ratione nulla quia. Velit quis necessitatibus in et dolor. Sunt eum repudiandae odit vel reprehenderit eligendi ex. Nemo eum alias velit labore quo. Harum ut rerum consequuntur deleniti in. Aut sequi vitae aut veritatis autem asperiores ea. Error corrupti quo qui amet exercitationem totam at sint. Quo perferendis beatae ut autem atque pariatur officia neque. Iusto numquam earum in sit velit et.', '17', 'Blue', 'Width:98cm; Length:144cm; Hight:171', 'M', '400.00', NULL, 'instuck', 222, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(15, 'et eum tenetur', 'et-eum-tenetur', 'DiGi-152326', 'digital_2.jpg', NULL, 'Explicabo facere modi excepturi dicta quis aperiam. Unde deserunt doloribus nobis esse qui.', 'Ut earum facilis quam totam est sit. Necessitatibus et voluptatem saepe rem animi rerum. Blanditiis dolorum enim est saepe nihil ut vero. Et non suscipit odio quis animi nesciunt placeat sequi. Temporibus consequatur ullam quae facilis ipsam distinctio. Nobis qui earum sapiente deserunt voluptatem architecto. Voluptas dolor quo aut et quis ipsum sint delectus. Ipsa qui qui quia occaecati fugit hic et. Nulla sequi assumenda alias inventore quam et. Est repellendus qui numquam id sed.', '10', 'Yellow', 'Width:20cm; Length:170cm; Hight:58', 'S', '134.00', NULL, 'instuck', 178, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(16, 'vel voluptas ut', 'vel-voluptas-ut', 'DiGi-201621', 'digital_16.jpg', NULL, 'Iste rerum consequatur consequatur nostrum. Perspiciatis ducimus doloribus sunt beatae id.', 'Ipsam facilis ut delectus optio. Quos voluptatem sint qui voluptates excepturi et. Cumque non iste temporibus voluptates rem ratione velit. Velit laboriosam et sit voluptatum cumque sequi blanditiis. Molestiae sint veritatis enim nam in enim aut. Consectetur corporis omnis quidem deleniti velit. Ex eligendi accusantium provident repellat expedita iusto. Libero sit laborum at voluptatibus tenetur illum facere. Autem sunt assumenda dignissimos quis occaecati nulla maxime. Qui in omnis optio.', '9', 'Grey', 'Width:162cm; Length:119cm; Hight:121', 'S', '102.00', NULL, 'instuck', 339, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(17, 'ducimus totam quam', 'ducimus-totam-quam', 'DiGi-256789', 'digital_3.jpg', NULL, 'Qui minus sed illo ullam fugiat et hic. Est ab aut sunt id mollitia. Ea non eum officia ut enim.', 'Et reiciendis est quisquam neque. Eos deleniti consequuntur dolorem voluptatem et. Laudantium possimus velit ea itaque. Minima veniam quae consequatur veritatis quis. Ut ut enim voluptas accusantium magnam eius. Aliquam et non quisquam ut saepe inventore velit. Accusamus corrupti labore eveniet omnis. Doloremque optio rerum error et. Voluptate blanditiis autem rerum atque recusandae voluptas. Ad voluptatem quis sunt quisquam sapiente. Quisquam maxime necessitatibus eos voluptas.', '20', 'Pink', 'Width:4cm; Length:136cm; Hight:32', 'XXL', '352.00', NULL, 'instuck', 302, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(18, 'ea recusandae corporis', 'ea-recusandae-corporis', 'DiGi-391406', 'digital_19.jpg', NULL, 'Vero id voluptatem accusamus dolor. Odit quae sapiente esse quae voluptatem est nobis.', 'Hic aut porro minima ut vel in facilis. Omnis eum doloremque ut tempora tenetur explicabo aspernatur. Quidem provident in aut ullam velit blanditiis. Reprehenderit inventore voluptas nostrum quod. Et hic sint error nesciunt reiciendis. Qui et eaque quis doloremque. Aut earum libero eaque sed fugiat omnis. Assumenda dolorem et ut praesentium veniam harum. Qui nobis aliquid dolor repellendus molestiae impedit consequatur. Qui vero illum reprehenderit. Vero aut excepturi perspiciatis qui a molestiae.', '12', 'white', 'Width:56cm; Length:117cm; Hight:84', 'M', '465.00', NULL, 'instuck', 146, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(19, 'omnis et dolore', 'omnis-et-dolore', 'DiGi-203007', 'digital_20.jpg', NULL, 'Atque commodi debitis nemo eveniet est est. Autem eum modi ducimus id.', 'Consequatur ullam a pariatur iure recusandae voluptas beatae asperiores. Et iure perspiciatis eum consequatur sint consequatur. Corrupti quidem enim alias. Perspiciatis illum quia enim sit. Voluptatum iusto perspiciatis sapiente enim dolorem rerum. Quod nisi eligendi non ullam sint qui dignissimos expedita. Et repudiandae et illo culpa sequi sed saepe. Labore voluptates natus dolor omnis vitae perspiciatis et atque. Quam at magni eum vitae deleniti aut voluptas consequatur. Voluptatem consequatur cum ipsa doloremque commodi.', '6', 'Black', 'Width:146cm; Length:30cm; Hight:97', 'S', '420.00', NULL, 'instuck', 161, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(20, 'repellat iste facere', 'repellat-iste-facere', 'DiGi-477569', 'digital_8.jpg', NULL, 'Nam quis aut ipsa natus. Incidunt ipsam illo nostrum debitis quasi. Odit aliquid et aut est.', 'Voluptate aut non cumque enim recusandae vitae provident nobis. Consequuntur tempore quis ipsam sit. Possimus et laboriosam est dolorem corporis perferendis sed. Atque unde vel sed quo. Maiores expedita corporis commodi sint. Magnam eaque sit dolorem perferendis non corporis. Illum aperiam quasi temporibus. Autem et esse id quam tenetur eum adipisci. Quam dolor dolorum id ut quia similique voluptatibus ipsa. Natus voluptatem quo enim itaque. Suscipit quaerat magni ea a deleniti ex nam et. Ad placeat voluptas iure facilis laudantium rerum. Eveniet dolor et excepturi minus dolor vitae non.', '13', 'white', 'Width:172cm; Length:66cm; Hight:123', 'M', '434.00', NULL, 'instuck', 209, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(21, 'nulla eum quo', 'nulla-eum-quo', 'DiGi-169889', 'digital_6.jpg', NULL, 'Sed qui ut id consequatur id omnis. Voluptas ipsum ex ut quidem. Eum ipsa esse voluptate molestiae.', 'In modi maiores voluptates quibusdam vitae. At quisquam aut quae dolorum. Quia sit corporis omnis ad est. Minus qui explicabo atque aut nisi soluta quia consequatur. Eum dolor aspernatur consequatur temporibus eveniet. Id ipsam molestiae ea culpa vitae a. Deleniti neque fugit ullam iste a reiciendis quibusdam. Necessitatibus excepturi occaecati est tempore sit porro perferendis esse. Quibusdam rerum voluptatum quae est vel dolores qui. Laborum non necessitatibus consectetur qui odio fugit.', '11', 'Black', 'Width:6cm; Length:131cm; Hight:89', 'XXL', '161.00', NULL, 'instuck', 351, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(22, 'sed nobis aut', 'sed-nobis-aut', 'DiGi-314517', 'digital_12.jpg', NULL, 'Ea qui at eius animi delectus dolorem dolores. Fuga consequatur quibusdam adipisci esse.', 'Molestiae adipisci praesentium quae asperiores iure. Animi voluptatibus vel sit illum enim mollitia tempore sunt. Tempora totam ad suscipit nostrum ex enim magnam. Recusandae iure reprehenderit amet est pariatur quia veritatis modi. Et ab sunt totam rerum vel eum iure. Harum dolorem commodi itaque et. Exercitationem blanditiis non et repellat dolore aut exercitationem. Omnis sed dolorem inventore repellat sunt id. Quod tempora ea est. Harum aut ad voluptatem magnam eveniet deserunt. Sit id aut ea consequuntur.', '12', 'Black', 'Width:125cm; Length:83cm; Hight:94', 'XXL', '429.00', NULL, 'instuck', 177, 0, 6, '2021-05-14 09:59:56', '2021-05-14 09:59:56'),
(23, 'ut ducimus et', 'ut-ducimus-et', 'DiGi-482174', 'furniture_09.jpg', NULL, 'Saepe sint illo quis ut. Odio atque eum et beatae. Et autem magni numquam et nam consequatur eaque.', 'Nostrum quo perferendis fuga fugit autem id perferendis. Dolor iure tempora saepe. Ut quod aliquam consequatur ut aut doloribus id. Totam veritatis tempore officiis accusamus consectetur distinctio velit. A consequuntur quaerat dolorum blanditiis sint sed quis. Similique qui ipsa sapiente reprehenderit dolorum itaque. Veniam repellat fugit beatae molestiae possimus. Illum rerum velit et temporibus veritatis. Optio consequatur sed veniam pariatur est harum. Voluptatem voluptatem quibusdam dolor facere.', '13', 'Pink', 'Width:190cm; Length:141cm; Hight:170', 'XS', '218.00', NULL, 'instuck', 168, 0, 4, '2021-05-14 10:01:01', '2021-05-14 10:01:01'),
(24, 'pariatur earum suscipit', 'pariatur-earum-suscipit', 'DiGi-435483', 'furniture_08.jpg', NULL, 'Facere a magnam ea ex dolorem harum. Consequatur non nobis illum facilis.', 'Cum ipsa quam et voluptate et atque accusantium. Modi dolorum perspiciatis omnis error consequatur. Reprehenderit eum magnam vero blanditiis voluptatem ad. Atque odio nemo quaerat. Enim itaque quia possimus velit tenetur sunt aut maxime. Aliquam sapiente rerum voluptatem odit natus. Id dolorum quidem perspiciatis ut. Omnis harum ut et vitae error inventore libero. Qui voluptas numquam non corrupti quis. Veniam a impedit laborum velit aliquam molestiae unde. Ut vitae qui dolorum voluptatem autem.', '11', 'Blue', 'Width:50cm; Length:127cm; Hight:168', 'M', '223.00', NULL, 'instuck', 328, 0, 4, '2021-05-14 10:01:01', '2021-05-14 10:01:01'),
(25, 'non deleniti reiciendis', 'non-deleniti-reiciendis', 'DiGi-483892', 'furniture_02.jpg', NULL, 'Sed et dignissimos ratione ad. Voluptatibus illum deserunt aut dolorem. Est ut et fugiat ipsam sed.', 'At consequatur commodi qui eligendi officiis ipsum ut. Pariatur et officia cum eos voluptas sit odio soluta. Neque labore tempora aliquid asperiores quo voluptate et. Et exercitationem necessitatibus distinctio nisi quisquam. Molestiae voluptas sed enim quia voluptatibus. Sed molestiae recusandae et recusandae. Aut sed maiores eveniet sunt. Architecto quidem culpa qui quibusdam dicta optio perspiciatis commodi. Facilis quaerat rerum recusandae perspiciatis aut. Quasi et eos qui nihil dolorem. Ut velit officiis ut necessitatibus eum. Nihil velit molestiae explicabo quia dignissimos.', '18', 'Black', 'Width:158cm; Length:78cm; Hight:14', 'M', '112.00', NULL, 'instuck', 218, 0, 4, '2021-05-14 10:01:01', '2021-05-14 10:01:01'),
(26, 'exercitationem magni quibusdam', 'exercitationem-magni-quibusdam', 'DiGi-165174', 'furniture_06.jpg', NULL, 'Quia et qui non non quo. Ut corporis omnis rem voluptatem amet. Et facere est quia.', 'Sit vitae debitis distinctio itaque consequatur. Animi error at illo hic aspernatur earum nam et. Non dolor repellendus vel ut corporis corporis assumenda. Laboriosam amet doloremque aut sequi impedit ut unde. Non dolorem consequatur sit debitis aspernatur accusamus quia fuga. Laboriosam fuga dolores ut ipsum. Consequatur nesciunt dolores assumenda nihil rerum. Omnis et voluptatibus reprehenderit natus qui eos.', '12', 'Yellow', 'Width:149cm; Length:7cm; Hight:91', 'L', '461.00', NULL, 'instuck', 125, 0, 4, '2021-05-14 10:01:01', '2021-05-14 10:01:01'),
(27, 'enim et debitis', 'enim-et-debitis', 'DiGi-466545', 'furniture_05.jpg', NULL, 'Quo voluptatem porro ipsam mollitia sit cum distinctio. Dolores harum ut iusto soluta culpa.', 'Molestias repellendus dolores optio perspiciatis ut quibusdam quod nostrum. Qui quod aspernatur tempore exercitationem velit minima. Optio ea et beatae recusandae tempore. Similique occaecati beatae nemo error. Quae enim officiis mollitia. Blanditiis quam ipsum non temporibus. Consequatur ea rem animi aut. Doloribus autem mollitia atque sunt rerum. Debitis consequuntur nostrum qui minima quae. Voluptas veniam sunt incidunt consequatur. Esse hic qui qui tenetur et provident enim. Aut recusandae sint aliquam atque saepe. Iure voluptatem consequatur asperiores dicta delectus.', '9', 'Yellow', 'Width:28cm; Length:14cm; Hight:107', 'S', '191.00', NULL, 'instuck', 267, 0, 4, '2021-05-14 10:01:01', '2021-05-14 10:01:01'),
(28, 'sint atque et', 'sint-atque-et', 'DiGi-273560', 'furniture_04.jpg', NULL, 'Ab fuga in fugiat ut. Eum quo alias ad modi. Excepturi ad quis esse enim consequatur.', 'Sint blanditiis rerum vitae necessitatibus. Corporis nihil blanditiis adipisci et rerum ut minima aut. Et quibusdam cumque rerum qui. Omnis et et voluptates sed delectus. Fugiat deleniti optio sed. Voluptatem voluptatem ea dolorem. Rem aliquam voluptatem enim rerum voluptatem. Voluptatum accusantium error optio magni recusandae cupiditate doloremque. Omnis nobis sint qui ut dolores eos. Laborum minus culpa officia earum. Molestiae fugiat cumque est et error fuga. Necessitatibus illo quam sunt sed impedit ut aliquam et.', '6', 'Red', 'Width:193cm; Length:107cm; Hight:142', 'S', '424.00', NULL, 'instuck', 296, 0, 4, '2021-05-14 10:01:02', '2021-05-14 10:01:02'),
(29, 'rerum consequatur recusandae', 'rerum-consequatur-recusandae', 'DiGi-386373', 'furniture_07.jpg', NULL, 'Et porro aut consequatur corporis sit ab sunt laboriosam. Nulla aut qui vero illo fugiat eos illo.', 'Similique a voluptas asperiores vel. Quod ratione molestias est dicta. Quia iusto iusto tempore quo in. Sit nostrum asperiores ut aut voluptatum voluptas quibusdam nisi. Id qui qui perspiciatis molestias qui. Quibusdam minus rerum et et recusandae voluptates aliquid. Ut dolores blanditiis tempora neque iste laboriosam quidem. Harum eveniet reiciendis culpa officiis voluptas. Pariatur dolorem ex iure ea. Accusantium dolores corrupti et velit itaque quia. Perferendis ea in nihil et delectus.', '18', 'Black', 'Width:43cm; Length:16cm; Hight:97', 'M', '325.00', NULL, 'instuck', 273, 0, 4, '2021-05-14 10:01:02', '2021-05-14 10:01:02'),
(30, 'sequi et cupiditate', 'sequi-et-cupiditate', 'DiGi-374912', 'furniture_01.jpg', NULL, 'Consequatur occaecati est unde sed. Sunt deserunt sit velit et quia. Aperiam dicta est repellendus.', 'Quia quia eligendi quibusdam exercitationem. Placeat dignissimos voluptate velit nemo. Rerum suscipit aut deleniti earum. Dolor modi ducimus et qui similique. Mollitia eos qui tempora placeat. Id quos consequuntur dolores cumque est. Et aut beatae totam libero et explicabo molestiae. Quia deserunt voluptas aliquid. Ut vero et est aut. Quasi accusamus sed non dolor aliquid itaque et. Eaque quo quaerat cupiditate consequatur. Amet fuga sit aliquid illo. In corrupti vel consequuntur consequatur temporibus sunt. Ex rerum molestiae saepe. In voluptas sed enim id.', '1', 'Yellow', 'Width:21cm; Length:37cm; Hight:27', 'XS', '338.00', NULL, 'instuck', 150, 0, 4, '2021-05-14 10:01:02', '2021-05-14 10:01:02'),
(31, 'aut sunt impedit', 'aut-sunt-impedit', 'DiGi-239670', 'furniture_03.jpg', NULL, 'Occaecati qui commodi in nostrum. Minima eum et eveniet aut architecto pariatur.', 'Non quas placeat dolorem aut aut sunt. Vel iusto culpa non at reprehenderit consectetur velit. Ullam architecto aut molestiae repudiandae reiciendis explicabo. Corporis debitis ex nemo quibusdam ullam aliquid. Illum ipsam consectetur qui. Et sunt quia velit odio temporibus. Sed in et repellendus nihil. Sed veniam qui ut enim. Accusantium sed cumque esse quo maxime. Et accusamus vero minus corrupti aut praesentium vero omnis.', '19', 'Blue', 'Width:130cm; Length:126cm; Hight:27', 'XS', '303.00', NULL, 'instuck', 141, 0, 4, '2021-05-14 10:01:02', '2021-05-14 10:01:02'),
(32, 'itaque molestiae dignissimos', 'itaque-molestiae-dignissimos', 'DiGi-212359', 'fashion_01.jpg', NULL, 'Est delectus vel eum. Animi sequi qui sit sint. Ut error velit qui repellendus est ea.', 'Porro doloribus repellendus et delectus. Cupiditate explicabo nesciunt nulla iure vel nesciunt. Aut itaque dolores omnis unde dicta assumenda incidunt. Aut nisi id occaecati autem maxime qui. Sunt laboriosam et vel soluta. Ab quis doloribus repellat doloremque voluptates accusantium eum. Harum cumque aut quidem. Iusto quos maiores vero deserunt enim fuga rerum ut. Ex quibusdam rerum numquam minima aut similique cumque esse. Ad beatae et et accusamus voluptas nihil voluptatibus. Magnam rerum et commodi sit quia quia delectus. Omnis enim saepe nobis.', '16', 'Red', 'Width:158cm; Length:170cm; Hight:98', 'L', '205.00', NULL, 'instuck', 299, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(33, 'est saepe aut', 'est-saepe-aut', 'DiGi-476528', 'fashion_06.jpg', NULL, 'Facilis dicta molestiae enim. Maiores quis qui molestias porro ducimus. Quo ea sit sapiente ipsum.', 'Distinctio ducimus tenetur impedit nobis unde praesentium. Fugiat quas asperiores eius qui non vel et. Qui at eum rem itaque. Natus dolor est culpa eos. Ut non iusto in. Eligendi facilis neque neque fuga. Rerum labore enim numquam est soluta molestiae dolorem. Iste odit provident qui est aut facilis quibusdam. Sequi et laboriosam inventore quod hic vel ut. Ratione facilis beatae alias nesciunt ipsum nam illo sunt.', '8', 'Yellow', 'Width:191cm; Length:75cm; Hight:120', 'XS', '343.00', NULL, 'instuck', 123, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(34, 'eum aut vel', 'eum-aut-vel', 'DiGi-231234', 'fashion_04.jpg', NULL, 'Et modi incidunt odit quidem blanditiis. Non est molestiae minus voluptas quidem ea.', 'Quis sed aut quibusdam voluptas ducimus. Eum tempora iusto rerum fugiat at et excepturi. Rem voluptatibus impedit explicabo voluptas voluptatibus et. Deleniti qui aspernatur incidunt non. Officiis consequatur et porro dignissimos distinctio id velit. Architecto aut deserunt error voluptas eos mollitia hic. In reprehenderit eius non quae quo cupiditate quia. Rerum est molestiae explicabo animi tenetur quod. Recusandae perspiciatis iusto est doloremque consequatur. Aut qui qui quo voluptatem. Ut nesciunt aliquam omnis ut commodi soluta molestiae non.', '9', 'Grey', 'Width:169cm; Length:144cm; Hight:53', 'XL', '452.00', NULL, 'instuck', 279, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(35, 'dolor quia quia', 'dolor-quia-quia', 'DiGi-152294', 'fashion_09.jpg', NULL, 'Iure natus iusto id optio. Qui fuga inventore modi. Id esse fugit eveniet ducimus.', 'Animi asperiores quas eveniet voluptatem. In tenetur quod dicta odio animi animi. Pariatur id odit est. Error optio dolorum maiores ut et. Labore culpa corrupti omnis. Eos laudantium dolor voluptatem voluptates consectetur deleniti est. Dolorem blanditiis voluptas esse dolor. Quibusdam enim atque dignissimos alias ut aperiam unde laudantium. Voluptatem minima corporis vitae sint. Dolorum qui ut ratione officia vel. Sunt autem corrupti vel.', '18', 'Black', 'Width:106cm; Length:182cm; Hight:3', 'S', '158.00', NULL, 'instuck', 228, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(36, 'et laborum magni', 'et-laborum-magni', 'DiGi-228974', 'fashion_07.jpg', NULL, 'Enim possimus et debitis veniam adipisci. Accusantium ut neque iure suscipit reprehenderit libero.', 'Modi quo repellat voluptates. Delectus vel enim sit qui aperiam. Dicta quia et quia. Aut earum quas tempora molestias repellendus animi sit voluptatem. Illum qui provident odit et hic maiores reprehenderit. Fuga rerum mollitia aut qui. Pariatur rerum et dolorem est occaecati. Sunt maiores nemo eligendi quas est voluptatum totam. Et et maiores dolore repudiandae. Qui quis cupiditate delectus cum. Est ut quia laborum quas non qui voluptas. Aut voluptas doloribus placeat est.', '3', 'Yellow', 'Width:136cm; Length:18cm; Hight:98', 'XL', '325.00', NULL, 'instuck', 211, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(37, 'est delectus consequatur', 'est-delectus-consequatur', 'DiGi-348295', 'fashion_10.jpg', NULL, 'Officia eveniet quo quia. Est sunt ut autem quas in. Vel quia inventore ratione et voluptas.', 'Et qui mollitia quae voluptas consectetur. Consequatur asperiores magnam libero impedit. Quos qui dolorum reiciendis voluptatum vel quia. Quis cumque vel quos incidunt dolores perspiciatis mollitia. Esse vitae voluptate distinctio ipsam. Officia quia odio accusantium reiciendis. Exercitationem eum dolorum commodi maxime velit praesentium illum. Et iusto ipsa consequatur cupiditate omnis. Earum suscipit nostrum corporis quis maiores. Impedit explicabo eum omnis. Illum voluptatem et sapiente consequatur qui rerum. Cupiditate asperiores expedita voluptatem in.', '10', 'Yellow', 'Width:119cm; Length:98cm; Hight:159', 'M', '239.00', NULL, 'instuck', 246, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(38, 'harum dolore eum', 'harum-dolore-eum', 'DiGi-416068', 'fashion_08.jpg', NULL, 'Quasi est veritatis iste impedit animi quo. Fugiat voluptatibus harum sapiente necessitatibus.', 'Et repudiandae error soluta possimus. Consectetur culpa aut dolorem ullam. Odit eaque accusamus qui facilis. Nulla quia qui autem iste id est. Earum officia delectus quis qui maiores voluptas ipsa voluptas. Consectetur quod provident facere quam quia. Ab error accusamus a et. Dolor maxime modi consequatur placeat sint. Sit labore ratione et sed. Quidem voluptas ut consequatur est nemo iste facilis. Voluptatibus doloribus reprehenderit veritatis aliquid pariatur et qui. Magnam autem magnam sint harum.', '12', 'Red', 'Width:117cm; Length:115cm; Hight:44', 'L', '485.00', NULL, 'instuck', 360, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(39, 'consectetur natus dignissimos', 'consectetur-natus-dignissimos', 'DiGi-478112', 'fashion_05.jpg', NULL, 'Sed repellendus modi quia ut eum eos. Atque et aut facilis vel deleniti.', 'Officiis ducimus aliquam asperiores quam sunt facere molestiae. Aut veritatis consequatur consequatur quis adipisci totam. Veritatis ut debitis eum odit enim. Velit consequuntur suscipit rem autem ducimus omnis iure. Placeat provident inventore dolores tenetur. Non ut eaque impedit necessitatibus quia molestias. Consequatur nam non ut impedit et et porro. Omnis omnis possimus corrupti vel quia consequatur. Blanditiis esse nobis cumque ut est. Iusto magnam adipisci est et vitae aut perferendis.', '4', 'Red', 'Width:118cm; Length:6cm; Hight:5', 'XXL', '465.00', NULL, 'instuck', 198, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(40, 'et est laudantium', 'et-est-laudantium', 'DiGi-293301', 'fashion_03.jpg', NULL, 'Enim nam sit ad consequatur. Praesentium saepe velit commodi.', 'Debitis iste odio inventore voluptatem a veniam. Atque reprehenderit quia dignissimos mollitia. Est ullam facere fugiat nesciunt impedit. Perferendis possimus aliquam necessitatibus id. Nostrum necessitatibus deserunt praesentium ratione et hic. Ut quam eum omnis aut modi voluptatem quia. Recusandae est delectus autem et. Officiis dolorem sed architecto et. Qui omnis iste quasi impedit aut. Voluptatem nemo aut dolore deserunt. Ipsum accusantium omnis laboriosam eius.', '7', 'Pink', 'Width:167cm; Length:61cm; Hight:114', 'M', '335.00', NULL, 'instuck', 187, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(41, 'inventore asperiores et', 'inventore-asperiores-et', 'DiGi-203039', 'fashion_02.jpg', NULL, 'Praesentium tempore nemo harum. Eaque impedit expedita aut. Ducimus ut dolor omnis.', 'Inventore quia expedita veritatis omnis est qui. Modi eligendi dolores ut voluptas aut. Similique iure temporibus vero accusamus cum illo eius. Minus ratione nam ea eaque odit ipsa dolorem. Omnis maiores beatae eos accusantium minus quis. Recusandae ut tempora velit quam vel laborum. Doloremque odio ducimus dolores dicta blanditiis a. Quia laboriosam totam commodi at repudiandae. Et qui expedita ex non illum debitis. Delectus et recusandae quidem.', '20', 'Yellow', 'Width:186cm; Length:158cm; Hight:28', 'XS', '176.00', NULL, 'instuck', 241, 0, 2, '2021-05-14 10:02:00', '2021-05-14 10:02:00'),
(42, 'non aut dolores', 'non-aut-dolores', 'DiGi-379966', 'kidtoy_02.jpg', NULL, 'Facilis aut rem quis aut. Qui ut aperiam necessitatibus quis quos veniam est.', 'Vitae quibusdam non labore et unde. Ipsum nihil dolorum natus minima a. Dolores et dolorem blanditiis. Et ut ipsum voluptatem et pariatur nesciunt. Vel rerum molestias sapiente est omnis vero rerum nam. Et libero fugiat error ut. Omnis eius maxime expedita et. Ut enim eos facilis doloribus est repudiandae consequatur. Ut molestiae ratione non consequatur ducimus nihil et. Neque deserunt qui nemo ipsam. Nulla blanditiis adipisci odio impedit voluptatem. Vel vitae autem debitis voluptas repellendus nam magnam. Quas beatae ut quos.', '9', 'Grey', 'Width:105cm; Length:101cm; Hight:127', 'S', '498.00', NULL, 'instuck', 213, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(43, 'asperiores et qui', 'asperiores-et-qui', 'DiGi-453270', 'kidtoy_01.jpg', NULL, 'Error dicta omnis qui voluptas. Accusamus expedita voluptas molestiae eos rerum quo omnis.', 'Ea doloremque et sed modi vitae. Voluptatum et sed natus debitis qui sint vel. Nam et sed iste amet ullam aut praesentium. Enim qui itaque minima rerum. A possimus velit est. Excepturi consectetur sit voluptatem qui commodi sunt. Non aut nam aut animi quos atque. Qui consectetur eius delectus omnis. Et ut dolorum iste vitae. Nulla impedit totam modi quod. Omnis quae nostrum consectetur pariatur. Hic doloremque labore voluptatem corporis est facere. Dolorum voluptatem minus commodi voluptates magni. Et ut vero vero eaque labore voluptatem et.', '8', 'Red', 'Width:189cm; Length:52cm; Hight:146', 'XL', '196.00', NULL, 'instuck', 322, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(44, 'nesciunt sequi deserunt', 'nesciunt-sequi-deserunt', 'DiGi-388296', 'kidtoy_05.jpg', NULL, 'Quisquam consequuntur quod id rerum porro facilis vel labore. Nihil ab tenetur similique qui enim.', 'Magnam placeat eveniet sunt sunt minus cumque quisquam. Itaque quasi consequatur perspiciatis distinctio. Fuga similique reprehenderit nihil repellendus debitis. Tempore natus exercitationem sequi temporibus expedita quasi. Incidunt esse vel hic non possimus natus atque quae. Repellat doloremque sed qui dolores non natus dolores. Dolores placeat ipsam excepturi quia voluptate qui veritatis. Provident quisquam voluptatem qui quae totam. Nisi incidunt soluta quisquam laudantium sed natus quis amet. Earum provident sed ipsam illum. Praesentium dolore omnis quaerat.', '2', 'Yellow', 'Width:75cm; Length:92cm; Hight:189', 'S', '172.00', NULL, 'instuck', 236, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(45, 'atque beatae id', 'atque-beatae-id', 'DiGi-314084', 'kidtoy_10.jpg', NULL, 'Sed est et sit rerum aspernatur. Et deserunt non iure ea. Maiores eum repellendus rerum eligendi.', 'Ullam fugiat voluptates earum. Cupiditate omnis ducimus modi explicabo. Aperiam ipsa laborum odit. Dicta similique quaerat quam voluptate. Delectus occaecati assumenda eos totam eos voluptatum magnam. Alias veniam alias accusantium dolores ea libero. Beatae labore rerum consequatur. Sint hic possimus totam qui ut. Quasi placeat sunt eveniet totam id dolores. Praesentium rerum ea sequi. Impedit voluptas quasi cum totam voluptatem. Voluptatem sit qui qui sint id. Quam nisi necessitatibus rem aperiam.', '1', 'white', 'Width:6cm; Length:174cm; Hight:70', 'L', '209.00', NULL, 'instuck', 206, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(46, 'ut aut at', 'ut-aut-at', 'DiGi-475953', 'kidtoy_04.jpg', NULL, 'Vel quis dolorem sunt. Et at dignissimos quidem in aut sed veniam. Ipsam et velit quisquam velit.', 'Esse rerum voluptates dicta voluptas. Iusto et atque est aut eius voluptatibus provident sunt. Sint aut sit qui itaque quos a ducimus. Laudantium natus dolores occaecati quidem veniam architecto at. Hic id sapiente et dolore praesentium quia. Nemo qui est et vero aut dolorem omnis voluptas. Ipsum minima alias voluptatem ut. Cum occaecati ea fugiat. Harum dignissimos sit repellat et. Est est libero doloribus voluptates rerum et. Asperiores eos adipisci est voluptatibus veritatis eaque. Atque ut dolorum tempore pariatur eum quis vitae. Quis temporibus quas non eos temporibus hic cupiditate.', '1', 'Black', 'Width:193cm; Length:120cm; Hight:62', 'S', '178.00', NULL, 'instuck', 196, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(47, 'assumenda repellat reprehenderit', 'assumenda-repellat-reprehenderit', 'DiGi-243139', 'kidtoy_03.jpg', NULL, 'Voluptas perferendis architecto ea placeat est. Et odio officia velit.', 'Mollitia at aspernatur provident unde voluptatem sed ut. Id voluptas suscipit vel qui dicta et ut voluptate. Excepturi rerum culpa est. Exercitationem ipsum iusto molestiae assumenda fuga debitis. Sint adipisci numquam libero distinctio asperiores. Et earum nemo quis deserunt assumenda. Voluptas error in repellendus. Est pariatur labore fugit quis eveniet reiciendis. In impedit eos voluptas fuga quia eligendi enim est.', '9', 'Red', 'Width:58cm; Length:19cm; Hight:52', 'M', '346.00', NULL, 'instuck', 215, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(48, 'voluptatum labore magni', 'voluptatum-labore-magni', 'DiGi-479806', 'kidtoy_08.jpg', NULL, 'Tempore nam accusamus inventore aut. Qui illo et mollitia. Placeat aperiam et ipsa enim quis.', 'Sed enim fuga iusto ut expedita. Voluptatem iste ut accusantium culpa consequatur cum quia. Doloremque ducimus est repellendus animi. Quia dicta qui autem hic sint corrupti. Velit ut facere corporis aut. Ducimus necessitatibus ad amet rerum laborum. Rerum aspernatur distinctio consectetur enim ullam nobis consequatur. Vel cumque et id ea ea asperiores et. Veniam impedit non architecto quasi sapiente. Magnam excepturi recusandae rerum.', '15', 'Black', 'Width:145cm; Length:125cm; Hight:161', 'L', '277.00', NULL, 'instuck', 209, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(49, 'qui eius quaerat', 'qui-eius-quaerat', 'DiGi-163141', 'kidtoy_09.jpg', NULL, 'Molestias quos non nemo a aut atque. Sed accusamus ab laborum. Nam qui quia perferendis reiciendis.', 'Totam aut dicta minima et commodi. Et sint autem et id recusandae voluptate qui. Hic numquam vel molestiae temporibus velit officiis. Totam voluptas rem eius ea at voluptatibus. Aperiam hic fugiat doloremque sed quo iste minima. Ut nostrum repellat suscipit delectus sunt quidem doloribus. Dolorem maxime libero iure ut nisi magnam vel. Quae totam ducimus ratione modi dolorem sint non. Corrupti exercitationem culpa exercitationem mollitia ut vitae ea. Et perspiciatis eum tempora officia. Sint eos ratione quas dolores qui.', '15', 'Pink', 'Width:128cm; Length:174cm; Hight:17', 'XS', '181.00', NULL, 'instuck', 235, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(50, 'similique quam veniam', 'similique-quam-veniam', 'DiGi-230352', 'kidtoy_06.jpg', NULL, 'Nostrum ut dolor quae ipsa. Eum eos vel eius voluptatem sit totam.', 'Non fuga modi totam aliquam. Earum earum vel ex ut quisquam repudiandae. Enim earum nesciunt quasi saepe officia. Nihil ipsa assumenda repellat repellat quas. Qui autem odio quibusdam ut expedita. Consequuntur quo nesciunt totam adipisci beatae officia. Molestiae porro ipsam excepturi odio excepturi placeat. Consectetur sed fugit ab. In earum voluptatum et fugit blanditiis laborum. Ea necessitatibus est quas commodi dolor accusamus quo. Rerum asperiores qui quasi et incidunt aut ut et. Facere voluptatem sunt soluta nemo velit distinctio.', '17', 'Pink', 'Width:47cm; Length:72cm; Hight:189', 'XXL', '215.00', NULL, 'instuck', 197, 0, 1, '2021-05-14 10:03:01', '2021-05-14 10:03:01'),
(51, 'children\'s bicycle', 'childrens-bicycle', 'DiGi-203675', 'kidtoy_07.jpg', NULL, 'Voluptatem debitis rerum earum sunt soluta rerum. Dolores et aspernatur quaerat eum velit.', 'Quia consectetur doloribus est optio. Architecto cum occaecati esse numquam. Saepe atque voluptatem tempora praesentium molestiae ut voluptatem. Deserunt animi sed doloribus sit hic. Qui ut provident fuga maiores ut molestiae qui. Id qui eaque recusandae porro. Repellat labore exercitationem blanditiis repudiandae rem vitae iure. Sint perferendis exercitationem ut perferendis autem. Repellat deleniti aperiam at alias ut facilis. Itaque hic omnis architecto voluptatem eos. Numquam qui ullam et sunt sunt ut. Quisquam est rem enim fugiat veritatis dolore.', '13', 'white', 'Width:27cm; Length:143cm; Hight:8', 'S', '211.00', NULL, 'instuck', 138, 0, 1, '2021-05-14 10:03:01', '2021-05-14 12:29:54'),
(52, 'ex iure minima', 'ex-iure-minima', 'DiGi-210897', 'organics_spa_7.jpg', NULL, 'Eos id vel sit. Sunt natus soluta autem. Veritatis et aut quia quisquam dolor ab rerum.', 'Eligendi itaque laborum ut nesciunt nam. Labore id et velit veniam blanditiis officia esse animi. Est omnis quam dolores dignissimos quasi accusamus dolores repellat. Reprehenderit voluptatem velit omnis minus pariatur. Sed natus sint aut delectus nihil. Voluptatem aut tenetur odit eius explicabo delectus. Odio laboriosam optio quam sint voluptatibus. Qui harum excepturi doloribus et porro. Maxime quo rem sed iste. Rerum vitae sint aut dolorem illo voluptatem dolorem. Et sit accusamus aut rem optio.', '10', 'white', 'Width:154cm; Length:165cm; Hight:40', 'L', '241.00', NULL, 'instuck', 309, 0, 10, '2021-05-14 10:04:21', '2021-05-14 10:04:21'),
(53, 'ut doloribus sint', 'ut-doloribus-sint', 'DiGi-199796', 'organics_spa_3.jpg', NULL, 'Architecto excepturi sint rem hic ut. Quaerat rem est qui consequatur.', 'Animi et voluptatem laudantium quae nobis. Quasi et quia sequi tenetur beatae. Necessitatibus consequatur quas iste aut. Commodi et illum molestiae expedita. Architecto occaecati nulla ut provident temporibus sapiente ut neque. Et adipisci quasi in voluptatem non officia. Dolorem qui nihil enim cupiditate. Libero occaecati ut ut laborum. Quaerat quia perspiciatis rem. Earum dolor iste optio id aut. Enim occaecati et sunt sed cupiditate. Voluptatem aut sequi distinctio cupiditate eligendi animi. Facilis fugiat vitae est maiores.', '6', 'Yellow', 'Width:22cm; Length:84cm; Hight:130', 'XL', '458.00', NULL, 'instuck', 214, 0, 10, '2021-05-14 10:04:21', '2021-05-14 10:04:21'),
(54, 'non et omnis', 'non-et-omnis', 'DiGi-424171', 'organics_spa_1.jpg', NULL, 'Nihil dolorum non sed modi sed repellendus. Voluptatem tenetur ipsa qui perspiciatis.', 'Dolor accusamus animi possimus eos voluptate dolorem consequatur. Totam sit veniam eos rerum nemo. Ratione sit itaque sed numquam quae sit. Magni maxime vel aperiam error veniam. Vel at voluptatem itaque animi voluptas. Quia fugiat sit quia et animi voluptas aut. Magnam ullam ut ut ab consequuntur eos. Magnam enim dolores dolor voluptatum cupiditate. Fugiat maxime ea veniam minus. Iusto eos aut consequatur id. Minima voluptas omnis dolores aperiam. Ipsum distinctio eum aliquam quo in.', '20', 'Pink', 'Width:192cm; Length:140cm; Hight:98', 'XS', '216.00', NULL, 'instuck', 134, 0, 10, '2021-05-14 10:04:21', '2021-05-14 10:04:21'),
(55, 'molestias sit deleniti', 'molestias-sit-deleniti', 'DiGi-295459', 'organics_spa_2.jpg', NULL, 'Porro libero doloribus accusantium ipsum doloribus. Hic quia vero velit aut expedita eaque vitae.', 'Et veniam omnis et facilis laudantium eum. Beatae dicta sit dolores occaecati. Iusto eius magni quia distinctio non. Pariatur doloribus ea aliquid sed. Et adipisci labore ut earum doloribus laudantium suscipit. Eum consequatur optio mollitia dicta commodi. Repellat qui rerum esse ut qui. Eum occaecati qui possimus non molestiae dolorum enim. Et error nihil dolores sed cum aut. Magni officiis ex adipisci aut et. Asperiores quia molestiae eos perspiciatis. Necessitatibus praesentium repellat a tempora non laboriosam voluptatem.', '3', 'Yellow', 'Width:7cm; Length:127cm; Hight:39', 'M', '233.00', NULL, 'instuck', 127, 0, 10, '2021-05-14 10:04:21', '2021-05-14 10:04:21'),
(56, 'repellendus et ipsam', 'repellendus-et-ipsam', 'DiGi-456768', 'organics_spa_5.jpg', NULL, 'Excepturi mollitia voluptas necessitatibus et. Error amet atque quia itaque et quo ea.', 'Ex expedita beatae quis odio autem. Amet nobis aut recusandae esse non dolor aliquid. Aliquam officia omnis distinctio. Quisquam libero et repudiandae. Quas quia sit ipsum qui sit. Dolores et ut aut. Itaque ut eaque omnis at distinctio doloremque cum. Provident ut numquam saepe magnam aut. Animi ut tempora voluptate voluptas exercitationem natus eos. Aspernatur aliquam quis blanditiis voluptas cum quia. Eligendi quidem doloribus voluptate quis.', '8', 'Yellow', 'Width:19cm; Length:96cm; Hight:43', 'M', '384.00', NULL, 'instuck', 163, 0, 10, '2021-05-14 10:04:21', '2021-05-14 10:04:21'),
(57, 'quidem modi consequuntur', 'quidem-modi-consequuntur', 'DiGi-287783', 'organics_spa_8.jpg', NULL, 'Et dolorem in cupiditate atque. Blanditiis consequatur sapiente hic natus. Eius et cum corrupti et.', 'Delectus eos vel enim ea. Exercitationem expedita fuga facilis suscipit ipsam. Officia quasi accusantium quia. Velit quia officia aspernatur libero ipsum ut. Asperiores eligendi quasi quos non molestiae cumque. Doloribus sapiente aut voluptatum quo voluptas qui. Reiciendis excepturi amet rerum doloribus culpa nihil magnam. Blanditiis iusto explicabo nihil sit sit. Dolores aperiam molestiae ducimus. Voluptas consectetur consequatur non ex quia ut alias sit.', '8', 'Grey', 'Width:28cm; Length:3cm; Hight:105', 'M', '177.00', NULL, 'instuck', 157, 0, 10, '2021-05-14 10:04:21', '2021-05-14 10:04:21'),
(58, 'eligendi nemo quia', 'eligendi-nemo-quia', 'DiGi-326361', 'organics_spa_6.jpg', NULL, 'Eum assumenda sit laudantium et ad. Provident vitae assumenda doloribus dolorem.', 'Et et quis in sed. Dolorem ducimus ex consequatur cumque voluptatem magnam. Qui saepe ipsum quia et iure ut. Facere deserunt ea tempora numquam. Qui provident cumque ullam distinctio inventore dolore. Debitis et quia voluptas molestiae qui omnis totam. Facilis quaerat quisquam ea in assumenda dolor est doloremque. Est maxime quam tenetur a. Quasi commodi rerum sint consequatur rem nisi.', '11', 'white', 'Width:73cm; Length:101cm; Hight:119', 'XS', '467.00', NULL, 'instuck', 272, 0, 10, '2021-05-14 10:04:21', '2021-05-14 10:04:21'),
(59, 'provident in fugiat', 'provident-in-fugiat', 'DiGi-484082', 'organics_spa_4.jpg', NULL, 'Nemo praesentium molestias minus. Dolores deserunt eum ut non quis.', 'Voluptates et eos tempore et. Magnam accusamus cum aspernatur est. Harum est quas quis perspiciatis unde eos. Laudantium repudiandae quam libero repellat. Cum illo et tenetur autem. Quasi et et qui quia natus sed blanditiis. Temporibus architecto velit tempora velit. Fuga ullam nihil vero totam est in dicta. Blanditiis dignissimos quas fugit maiores. Ad eum quaerat in est repellendus incidunt qui. Dolorum nihil nostrum autem dolorem laudantium. Ducimus nulla sed qui hic qui.', '17', 'white', 'Width:171cm; Length:32cm; Hight:85', 'XXL', '163.00', NULL, 'instuck', 297, 0, 10, '2021-05-14 10:04:21', '2021-05-14 10:04:21');
INSERT INTO `products` (`id`, `name`, `slug`, `SKU`, `image`, `images`, `short_description`, `description`, `weight`, `colors`, `dimensions`, `size`, `price`, `sales_price`, `stuck_status`, `quantity`, `featured`, `category_id`, `created_at`, `updated_at`) VALUES
(60, 'sint eveniet rem', 'sint-eveniet-rem', 'DiGi-133125', 'tools_equipment_2.jpg', NULL, 'Officiis labore aut praesentium eius accusamus perspiciatis. Ut ea quia quo corrupti.', 'Impedit distinctio velit exercitationem eos sed corrupti. Sit culpa cumque quis sint quia enim animi. Similique dolores facere molestiae corporis eveniet sed est. Ab illum et quos est sunt dicta. Sunt nobis iusto sit repudiandae. Vitae porro quis dolorem voluptas in et. Nisi occaecati cum et impedit et. Vero vitae quia quis sunt. Quasi velit ad aliquid ex eius eveniet. Quisquam sed enim maiores veniam corrupti. Accusamus numquam error qui provident.', '14', 'Yellow', 'Width:76cm; Length:10cm; Hight:38', 'XL', '401.00', NULL, 'instuck', 248, 0, 9, '2021-05-14 10:05:21', '2021-05-14 10:05:21'),
(61, 'odit ut laborum', 'odit-ut-laborum', 'DiGi-252977', 'tools_equipment_6.jpg', NULL, 'Accusantium veniam in magni. Et consequatur possimus quis voluptate dolores.', 'Perferendis quaerat optio sed doloremque. Asperiores quidem amet quo ut. Molestias deserunt ullam cupiditate earum qui fuga et. Ut ut ex aut dolorem. Nihil iusto doloremque tempore voluptatem vitae. Et et aut voluptas alias saepe sint. Odit dicta sit error sequi optio. Non facilis quo consequatur perspiciatis sit iusto. Cupiditate quo numquam ab quia et deserunt molestiae. Ad harum veniam facere error ipsa delectus assumenda. Quos sed cum eos in tempore. Provident excepturi tempore libero sed eos voluptas aut. Enim aut repellat adipisci labore voluptatem deleniti ratione.', '20', 'Grey', 'Width:39cm; Length:39cm; Hight:65', 'XL', '158.00', NULL, 'instuck', 207, 0, 9, '2021-05-14 10:05:21', '2021-05-14 10:05:21'),
(62, 'tenetur fugiat quam', 'tenetur-fugiat-quam', 'DiGi-116950', 'tools_equipment_7.jpg', NULL, 'Sit voluptates est nostrum nobis. Ea iste maxime labore sint deleniti. In ut quis earum cum.', 'Quis modi explicabo maxime est sed. Aut et in blanditiis quaerat consectetur consequuntur et. Quia nesciunt et eius et saepe tempora. Accusantium hic tempora sint quia id eum iusto alias. Ipsa nesciunt quia est corrupti. Molestias eum veniam deleniti minima molestiae voluptate ut. Eum qui reiciendis perspiciatis beatae. Aut vel debitis ab magni architecto libero. Facere omnis sunt doloremque id tempora molestias. Non est placeat repellendus veritatis. Veniam repudiandae dolorum voluptatem. Rerum assumenda debitis perspiciatis sed voluptates est. Est placeat impedit beatae quia tempore.', '7', 'Red', 'Width:135cm; Length:102cm; Hight:119', 'XS', '376.00', NULL, 'instuck', 278, 0, 9, '2021-05-14 10:05:21', '2021-05-14 10:05:21'),
(63, 'provident sit et', 'provident-sit-et', 'DiGi-204370', 'tools_equipment_4.jpg', NULL, 'Exercitationem nam est velit omnis. Qui in in reiciendis. Totam inventore deleniti laborum.', 'Magni voluptatibus consequatur est debitis. Atque similique ducimus dolor quasi. Labore omnis dolorem facere consectetur nulla. Minus est pariatur architecto iusto veritatis alias. Et quis mollitia eos accusantium quisquam voluptatem. Voluptatum dignissimos repellendus perspiciatis. Maiores enim distinctio ut iure sed voluptatum quo. Eligendi mollitia voluptatem voluptate voluptatem provident voluptate. Dolor doloribus atque cumque quas aut asperiores adipisci nesciunt. Ratione ipsam vel et aut non minima. Ipsum illum reiciendis autem optio fugit harum.', '3', 'white', 'Width:62cm; Length:199cm; Hight:24', 'XL', '166.00', NULL, 'instuck', 294, 0, 9, '2021-05-14 10:05:21', '2021-05-14 10:05:21'),
(64, 'illum nihil iste', 'illum-nihil-iste', 'DiGi-156392', 'tools_equipment_1.jpg', NULL, 'Aut nesciunt amet dolore eius cumque incidunt et et. Tempora dolores ut non sint illum possimus.', 'Magnam tempora debitis minus in quis ad id in. Et sint unde ad adipisci dolorem culpa officia. Autem quas nam ut officiis. Aut incidunt quibusdam quod sed. Ut ab sit et labore debitis. Modi consequuntur sequi et qui in aut sed. Eligendi sed inventore quasi inventore perspiciatis repellendus. Non quaerat quod qui provident. Quisquam eius in alias at. Sit repellendus nisi eligendi. Rerum voluptate ad rem laboriosam occaecati sit voluptatem. Ut earum et velit quod sunt consequatur neque.', '7', 'Black', 'Width:109cm; Length:172cm; Hight:44', 'L', '234.00', NULL, 'instuck', 199, 0, 9, '2021-05-14 10:05:21', '2021-05-14 10:05:21'),
(65, 'tempora eius voluptatem', 'tempora-eius-voluptatem', 'DiGi-214470', 'tools_equipment_3.jpg', NULL, 'Laboriosam repudiandae officia et culpa. Quasi rerum placeat sit.', 'Facilis et et tempore nemo. Earum doloremque eligendi et nesciunt ut. Asperiores cupiditate quis voluptatem minus ea commodi at. Qui vero quo iure sunt. Vel dicta incidunt ipsam rerum voluptas. Delectus ratione rerum iusto itaque exercitationem ducimus quia. Nobis reprehenderit nam est sapiente. Consequatur sint voluptates sit aut ex sed non. Sit sint nam qui eum consectetur ut ea esse. Corrupti quod sint placeat aut quia temporibus hic. Beatae sed et aspernatur ut officia.', '6', 'Blue', 'Width:106cm; Length:178cm; Hight:160', 'M', '471.00', NULL, 'instuck', 174, 0, 9, '2021-05-14 10:05:21', '2021-05-14 10:05:21'),
(66, 'minima molestiae voluptatem', 'minima-molestiae-voluptatem', 'DiGi-403081', 'tools_equipment_5.jpg', NULL, 'Sunt aut dolorem cumque corrupti distinctio neque ut. Est qui nihil est et voluptatem corrupti at.', 'Officiis consectetur dicta omnis. Ullam distinctio ullam error at. Libero omnis sit quam numquam aperiam aliquid libero aspernatur. Neque nisi qui tempora rerum eos. Cupiditate quae enim illum illum. Optio deserunt assumenda ea facere delectus. Asperiores vitae alias quas suscipit magni omnis. Sint et voluptatibus quo. Ad voluptas et nam ad voluptas. Culpa tempora suscipit iste dolorum. A est placeat autem repellat sit porro rerum. Nostrum laudantium quo ea qui. Eius fuga commodi distinctio beatae et dicta beatae.', '8', 'Red', 'Width:97cm; Length:40cm; Hight:151', 'L', '326.00', NULL, 'instuck', 330, 0, 9, '2021-05-14 10:05:21', '2021-05-14 10:05:21'),
(71, 'Lovely Doll', 'lovely-doll', 'DiGi-1003234', NULL, NULL, NULL, 'erert ert e rt ert e rt ert', NULL, NULL, NULL, 'XS', '210.00', NULL, 'instuck', 12, 0, 1, '2021-05-23 15:24:34', '2021-05-23 15:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HOw1DPtaUtKzZPCcGt3IcNeusqeFsdKqG2RSF5DP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.62', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicFNMRVZlUlQ4Z21nOUVQaG8weU03ZGFvSFhYWXJxZDVyS2hJNkwxbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3Byb2R1Y3QtZGV0YWlscy9hc3N1bWVuZGEtcmVwZWxsYXQtcmVwcmVoZW5kZXJpdCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRodFd5V0xoRkJubWhIcVpYR1JDSTUuM3lxTjEwcS9xcXNZbmhsb293SVFGSTlpbFZzVlRVcSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkaHRXeVdMaEZCbm1oSHFaWEdSQ0k1LjN5cU4xMHEvcXFzWW5obG9vd0lRRkk5aWxWc1ZUVXEiO30=', 1621794393),
('qLwbXZqmEzjDAZZp1z5UEW3oM8OZ3VqtAhRhPm22', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.62', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaFhWNVc5OFczeFZ1RVU2NkM4Y1ZiQ3FYazlMUUlkNWN1cDFtam9EWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9kdWN0cy9pbmRleCI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkaHRXeVdMaEZCbm1oSHFaWEdSQ0k1LjN5cU4xMHEvcXFzWW5obG9vd0lRRkk5aWxWc1ZUVXEiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGh0V3lXTGhGQm5taEhxWlhHUkNJNS4zeXFOMTBxL3Fxc1luaGxvb3dJUUZJOWlsVnNWVFVxIjt9', 1622632448),
('rfXu2yILPnxOxlDAn3yb7DgsM5HxGagZ2daobQ3v', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.62', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieFJvVzVDaFhPR3k3czFwQ2NQcmtFWVBWVU55ZHFzUWRUMkp0SkdLTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkaHRXeVdMaEZCbm1oSHFaWEdSQ0k1LjN5cU4xMHEvcXFzWW5obG9vd0lRRkk5aWxWc1ZUVXEiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGh0V3lXTGhGQm5taEhxWlhHUkNJNS4zeXFOMTBxL3Fxc1luaGxvb3dJUUZJOWlsVnNWVFVxIjt9', 1624701756);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'ADM', 'admin1@oshopo.com', NULL, '$2y$10$htWyWLhFBnmhHqZXGRCI5.3yqN10q/qqsYnhloowIQFI9ilVsVTUq', NULL, NULL, NULL, NULL, NULL, '2021-05-14 10:08:20', '2021-05-14 10:08:20'),
(7, 'user08', 'USR', 'user08@shop.com', NULL, '$2y$10$MlIFxP1AYSH5nPP7xx5xSuObqePBRnYWTrTI248616F/lQiy6rMoG', NULL, NULL, NULL, NULL, NULL, '2021-05-17 15:40:30', '2021-05-17 15:40:30'),
(10, 'unser44', 'USR', 'user44@gmial.com', NULL, '$2y$10$vhurtnbg.P4RGI3AeiXmoOm0BGF89XZ/gJE5p3ahm6RHNP4dRQYim', NULL, NULL, NULL, NULL, NULL, '2021-06-26 06:55:28', '2021-06-26 06:55:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
