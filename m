Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C22F2270E
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 17:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m4/w8zr515cVoIynBrwx/k0aQZCpwCV1+lPAO3ib98I=; b=hV6x9GDvth1zOLuyKrE+IKc65n
	813J2nD28g1+umefpMfCAGHypBQk/3bmRzJxAWKD7ZokhL9g+fXKTWBTkE7cAS3YYbi6IIB/Pbtd0
	7FPzWk6kCY94LKiKMIiYHkrCXfJnmxeXYxJfqWfrlxmf1YAkwF9S0Ow4tsCmm+LDoj/FNPhCQRcGc
	aagwG2woR9sgcDxZyQFtGu5MiOpbvvLIQT9YWsNkBAXITfimFlRERivCVccevLt9H1BKeKU2Cnb6F
	v0FymZetRqfUUmxO888UhmCW4KZokbCxJN9PF/Xz35CxlyZEfiji1alqyURxU/PhFzoGdOPNBWGi6
	uWRdIxGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSNPf-00056h-Ht; Sun, 19 May 2019 15:07:47 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSNPI-0004jE-B7
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 15:07:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id x15so5516128pln.9
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 08:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U8xFxvUpy6aWqcnuntquTMzo2ioaVDig5Dd4zyNLVNM=;
 b=inDlR4bpMOsRRE0Fsiv0ipGZfCVAenfZwbKXDzUDiDrYaxPnn6wjICduT+dSMrfsKT
 t4PlF3W0oOrYhNVN7R9e2FpEyyr52JFXRBU4xn4W0khALaDLIh+tv0YIkB/j3Ha54AWs
 Abnia0dac6w9x0lGZ8v+H+z153r4YGdLCpxNKrGK5o3nwbatHg2Pki67oMK/ruK1r/e3
 020sm5XyGFjkLnXfP7J92rqI/kv7zjPOPQFyGEp2K34q2PAtUswNtAnL6siRELv4iJk5
 1cQ7VVkNxaSuA40xEfq1FvX+oZyyPw1fXt0MBGURxgJascRvlyvZ2ohnbnBt7LqHbwqi
 n2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U8xFxvUpy6aWqcnuntquTMzo2ioaVDig5Dd4zyNLVNM=;
 b=QZciHMag7NUHchy4H00djl4C/IGO2BwJhzrWh6QrHWuvdlzaphJiw9Ismi8N/OqiV+
 LaF20j8+Leh2UwGcFBnZAytv1OceIudKzZrvSLuGTLD0hVtpO5tje+3LIQXWoEwt5fT5
 klXEmUnzaFkJ6mqSqOFT7uXKqHUdWxChr57Auh/UZ9z3ytKtFkMslCMmSws5v2nZ7yqO
 Xm7wtBJawiWOFRofFQaxM0qIQEXIW2JaYjc+Xj62Es6WpXkhRDkUy30qM+vcsPavEDCM
 Ty/ebuRKFDZibXDBoh0HNFioVVhvIuRsTQsxUfYgTAfF3q2lPvbQerEv4AjrHoHhPHch
 /o4A==
X-Gm-Message-State: APjAAAUTsXd/nPoVkhzRgTq3OOHZnBcl3d5Q9K9r4Kk/CTGESWkhMowr
 imZlTqh+MT3/TOAmB9c48MA3HMSR
X-Google-Smtp-Source: APXvYqzvACDxEYD4mTclP6q6RXlwSx9KMb9bmj+F98P8TPySDHPf8MDWda/w03lIjMbdWJdwY/0TWQ==
X-Received: by 2002:a17:902:6ac6:: with SMTP id
 i6mr70756670plt.336.1558278443717; 
 Sun, 19 May 2019 08:07:23 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:5085:bb4a:e3a8:fc9d])
 by smtp.gmail.com with ESMTPSA id g17sm2441105pfb.56.2019.05.19.08.07.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 08:07:23 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/7] devcoredump: allow to create several coredump files in
 one device
Date: Mon, 20 May 2019 00:06:54 +0900
Message-Id: <1558278418-5702-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
References: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_080724_782388_B94A1C4E 
X-CRM114-Status: GOOD (  25.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The device coredump mechanism currently allows drivers to create only a
single coredump file.  If there are several binary blobs to dump, we need
to define a binary format or conver to text format in order to put them
into a single coredump file.

This provides a new function that allows drivers to create several device
coredump files in one crashed device.

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- No change since v2

 drivers/base/devcoredump.c  | 155 ++++++++++++++++++++++++++++++--------------
 include/linux/devcoredump.h |  33 ++++++++++
 2 files changed, 139 insertions(+), 49 deletions(-)

diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
index e42d0b5..4dd6dba 100644
--- a/drivers/base/devcoredump.c
+++ b/drivers/base/devcoredump.c
@@ -25,16 +25,20 @@ static bool devcd_disabled;
 /* if data isn't read by userspace after 5 minutes then delete it */
 #define DEVCD_TIMEOUT	(HZ * 60 * 5)
 
-struct devcd_entry {
-	struct device devcd_dev;
-	void *data;
-	size_t datalen;
-	struct module *owner;
+struct devcd_file {
+	struct bin_attribute bin_attr;
 	ssize_t (*read)(char *buffer, loff_t offset, size_t count,
 			void *data, size_t datalen);
 	void (*free)(void *data);
+};
+
+struct devcd_entry {
+	struct device devcd_dev;
+	struct module *owner;
 	struct delayed_work del_wk;
 	struct device *failing_dev;
+	int num_files;
+	struct devcd_file files[];
 };
 
 static struct devcd_entry *dev_to_devcd(struct device *dev)
@@ -45,8 +49,14 @@ static struct devcd_entry *dev_to_devcd(struct device *dev)
 static void devcd_dev_release(struct device *dev)
 {
 	struct devcd_entry *devcd = dev_to_devcd(dev);
+	int i;
+
+	for (i = 0; i < devcd->num_files; i++) {
+		struct devcd_file *file = &devcd->files[i];
+
+		file->free(file->bin_attr.private);
+	}
 
-	devcd->free(devcd->data);
 	module_put(devcd->owner);
 
 	/*
@@ -64,9 +74,14 @@ static void devcd_dev_release(struct device *dev)
 static void devcd_del(struct work_struct *wk)
 {
 	struct devcd_entry *devcd;
+	int i;
 
 	devcd = container_of(wk, struct devcd_entry, del_wk.work);
 
+	for (i = 0; i < devcd->num_files; i++)
+		device_remove_bin_file(&devcd->devcd_dev,
+				       &devcd->files[i].bin_attr);
+
 	device_del(&devcd->devcd_dev);
 	put_device(&devcd->devcd_dev);
 }
@@ -75,10 +90,11 @@ static ssize_t devcd_data_read(struct file *filp, struct kobject *kobj,
 			       struct bin_attribute *bin_attr,
 			       char *buffer, loff_t offset, size_t count)
 {
-	struct device *dev = kobj_to_dev(kobj);
-	struct devcd_entry *devcd = dev_to_devcd(dev);
+	struct devcd_file *file =
+		container_of(bin_attr, struct devcd_file, bin_attr);
 
-	return devcd->read(buffer, offset, count, devcd->data, devcd->datalen);
+	return file->read(buffer, offset, count, bin_attr->private,
+			  bin_attr->size);
 }
 
 static ssize_t devcd_data_write(struct file *filp, struct kobject *kobj,
@@ -93,25 +109,6 @@ static ssize_t devcd_data_write(struct file *filp, struct kobject *kobj,
 	return count;
 }
 
-static struct bin_attribute devcd_attr_data = {
-	.attr = { .name = "data", .mode = S_IRUSR | S_IWUSR, },
-	.size = 0,
-	.read = devcd_data_read,
-	.write = devcd_data_write,
-};
-
-static struct bin_attribute *devcd_dev_bin_attrs[] = {
-	&devcd_attr_data, NULL,
-};
-
-static const struct attribute_group devcd_dev_group = {
-	.bin_attrs = devcd_dev_bin_attrs,
-};
-
-static const struct attribute_group *devcd_dev_groups[] = {
-	&devcd_dev_group, NULL,
-};
-
 static int devcd_free(struct device *dev, void *data)
 {
 	struct devcd_entry *devcd = dev_to_devcd(dev);
@@ -157,7 +154,6 @@ static struct class devcd_class = {
 	.name		= "devcoredump",
 	.owner		= THIS_MODULE,
 	.dev_release	= devcd_dev_release,
-	.dev_groups	= devcd_dev_groups,
 	.class_groups	= devcd_class_groups,
 };
 
@@ -234,30 +230,55 @@ static ssize_t devcd_read_from_sgtable(char *buffer, loff_t offset,
 				  offset);
 }
 
+static struct devcd_entry *devcd_alloc(struct dev_coredumpm_bulk_data *files,
+				       int num_files, gfp_t gfp)
+{
+	struct devcd_entry *devcd;
+	int i;
+
+	devcd = kzalloc(struct_size(devcd, files, num_files), gfp);
+	if (!devcd)
+		return NULL;
+
+	devcd->num_files = num_files;
+
+	for (i = 0; i < devcd->num_files; i++) {
+		struct devcd_file *file = &devcd->files[i];
+
+		sysfs_bin_attr_init(&file->bin_attr);
+		file->bin_attr.attr.name = files[i].name;
+
+		file->bin_attr.attr.mode = 0600;
+		file->bin_attr.size = files[i].datalen;
+		file->bin_attr.private = files[i].data;
+		file->bin_attr.read = devcd_data_read;
+		file->bin_attr.write = devcd_data_write;
+
+		file->read = files[i].read;
+		file->free = files[i].free;
+	}
+
+	return devcd;
+}
+
 /**
- * dev_coredumpm - create device coredump with read/free methods
+ * dev_coredumpm_bulk - create a number of device coredump files
  * @dev: the struct device for the crashed device
  * @owner: the module that contains the read/free functions, use %THIS_MODULE
- * @data: data cookie for the @read/@free functions
- * @datalen: length of the data
  * @gfp: allocation flags
- * @read: function to read from the given buffer
- * @free: function to free the given buffer
+ * @files: the configuration of device coredump files
+ * @num_files: the number of device coredump files to create
  *
- * Creates a new device coredump for the given device. If a previous one hasn't
- * been read yet, the new coredump is discarded. The data lifetime is determined
- * by the device coredump framework and when it is no longer needed the @free
- * function will be called to free the data.
+ * This function allows drivers to create several device coredump files in
+ * one crashed device.
  */
-void dev_coredumpm(struct device *dev, struct module *owner,
-		   void *data, size_t datalen, gfp_t gfp,
-		   ssize_t (*read)(char *buffer, loff_t offset, size_t count,
-				   void *data, size_t datalen),
-		   void (*free)(void *data))
+void dev_coredumpm_bulk(struct device *dev, struct module *owner, gfp_t gfp,
+			struct dev_coredumpm_bulk_data *files, int num_files)
 {
 	static atomic_t devcd_count = ATOMIC_INIT(0);
 	struct devcd_entry *devcd;
 	struct device *existing;
+	int i;
 
 	if (devcd_disabled)
 		goto free;
@@ -272,15 +293,11 @@ void dev_coredumpm(struct device *dev, struct module *owner,
 	if (!try_module_get(owner))
 		goto free;
 
-	devcd = kzalloc(sizeof(*devcd), gfp);
+	devcd = devcd_alloc(files, num_files, gfp);
 	if (!devcd)
 		goto put_module;
 
 	devcd->owner = owner;
-	devcd->data = data;
-	devcd->datalen = datalen;
-	devcd->read = read;
-	devcd->free = free;
 	devcd->failing_dev = get_device(dev);
 
 	device_initialize(&devcd->devcd_dev);
@@ -292,6 +309,12 @@ void dev_coredumpm(struct device *dev, struct module *owner,
 	if (device_add(&devcd->devcd_dev))
 		goto put_device;
 
+	for (i = 0; i < devcd->num_files; i++) {
+		if (device_create_bin_file(&devcd->devcd_dev,
+					   &devcd->files[i].bin_attr))
+			/* nothing - some files will be missing */;
+	}
+
 	if (sysfs_create_link(&devcd->devcd_dev.kobj, &dev->kobj,
 			      "failing_device"))
 		/* nothing - symlink will be missing */;
@@ -309,7 +332,41 @@ void dev_coredumpm(struct device *dev, struct module *owner,
  put_module:
 	module_put(owner);
  free:
-	free(data);
+	for (i = 0; i < num_files; i++)
+		files[i].free(files[i].data);
+}
+EXPORT_SYMBOL_GPL(dev_coredumpm_bulk);
+
+/**
+ * dev_coredumpm - create device coredump with read/free methods
+ * @dev: the struct device for the crashed device
+ * @owner: the module that contains the read/free functions, use %THIS_MODULE
+ * @data: data cookie for the @read/@free functions
+ * @datalen: length of the data
+ * @gfp: allocation flags
+ * @read: function to read from the given buffer
+ * @free: function to free the given buffer
+ *
+ * Creates a new device coredump for the given device. If a previous one hasn't
+ * been read yet, the new coredump is discarded. The data lifetime is determined
+ * by the device coredump framework and when it is no longer needed the @free
+ * function will be called to free the data.
+ */
+void dev_coredumpm(struct device *dev, struct module *owner,
+		   void *data, size_t datalen, gfp_t gfp,
+		   ssize_t (*read)(char *buffer, loff_t offset, size_t count,
+				   void *data, size_t datalen),
+		   void (*free)(void *data))
+{
+	struct dev_coredumpm_bulk_data bulk_data = {
+		.name = "data",
+		.data = data,
+		.datalen = datalen,
+		.read = read,
+		.free = free,
+	};
+
+	dev_coredumpm_bulk(dev, owner, gfp, &bulk_data, 1);
 }
 EXPORT_SYMBOL_GPL(dev_coredumpm);
 
diff --git a/include/linux/devcoredump.h b/include/linux/devcoredump.h
index 269521f..9addb6f 100644
--- a/include/linux/devcoredump.h
+++ b/include/linux/devcoredump.h
@@ -65,6 +65,26 @@ static inline void _devcd_free_sgtable(struct scatterlist *table)
 	kfree(delete_iter);
 }
 
+/**
+ * struct dev_coredumpm_bulk_data - Data used for dev_coredumpm_bulk
+ *
+ * @name: coredump file name
+ * @data: data cookie for the @read/@free functions
+ * @datalen: length of the data
+ * @read: function to read from the given buffer
+ * @free: function to free the given buffer
+ *
+ * An array of this structure is passed as argument to dev_coredumpm_bulk, and
+ * used to describe each device coredump.
+ */
+struct dev_coredumpm_bulk_data {
+	char *name;
+	void *data;
+	size_t datalen;
+	ssize_t (*read)(char *buffer, loff_t offset, size_t count,
+			void *data, size_t datalen);
+	void (*free)(void *data);
+};
 
 #ifdef CONFIG_DEV_COREDUMP
 void dev_coredumpv(struct device *dev, void *data, size_t datalen,
@@ -76,6 +96,9 @@ void dev_coredumpm(struct device *dev, struct module *owner,
 				   void *data, size_t datalen),
 		   void (*free)(void *data));
 
+void dev_coredumpm_bulk(struct device *dev, struct module *owner, gfp_t gfp,
+			struct dev_coredumpm_bulk_data *files, int num_files);
+
 void dev_coredumpsg(struct device *dev, struct scatterlist *table,
 		    size_t datalen, gfp_t gfp);
 #else
@@ -95,6 +118,16 @@ dev_coredumpm(struct device *dev, struct module *owner,
 	free(data);
 }
 
+static inline
+void dev_coredumpm_bulk(struct device *dev, struct module *owner, gfp_t gfp,
+			struct dev_coredumpm_bulk_data *files, int num_files)
+{
+	int i;
+
+	for (i = 0; i < num_files; i++)
+		files[i].free(files[i].data);
+}
+
 static inline void dev_coredumpsg(struct device *dev, struct scatterlist *table,
 				  size_t datalen, gfp_t gfp)
 {
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
