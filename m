Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436E87559A
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSWP+k0fo+7zHKLzRqPQTqow507tLOQWjSp8ol3DaN0=; b=cq9nJwyScFBK3u
	b2tOaojY6LAva0u3Ao6nbRBRUYiE01Dpq0ycvylwXP1vfDVPgGuwcRGBLVAyJG7jktKXXCPb6lpBI
	oqQ05tLSaXUs1FHrD4yLD1YL8A+jkjW1pYQCW6AC2MU9nBJI/AZ8ar9W7ih2tuuFIOwspTzTC4EF/
	KxA0imqWoKBqnG3OhqDlkrWGjsosJV60xXxLKGY2J6b8BTba2UMRrhUozpA5+lGFkfJUJaSgLmYjK
	7sD2WCv4bkRZN5skUsuUPdEM3cXd1X7BeeLmWHDQs8FLU5t6k0tmuOO8BybnpmNKO2Z/NZYAHUcWh
	3mVPqqgrfMNq3G9F8RKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhU6-0000rT-Fe; Thu, 25 Jul 2019 17:24:54 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhSz-00008x-ON
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:23:47 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSv-0001JF-V8; Thu, 25 Jul 2019 11:23:45 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSv-0001n8-0Z; Thu, 25 Jul 2019 11:23:41 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Thu, 25 Jul 2019 11:23:21 -0600
Message-Id: <20190725172335.6825-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725172335.6825-1-logang@deltatee.com>
References: <20190725172335.6825-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, Chaitanya.Kulkarni@wdc.com,
 maxg@mellanox.com, sbates@raithlin.com, logang@deltatee.com,
 gregkh@linuxfoundation.org, viro@zeniv.linux.org.uk
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_102346_129074_530A27F0 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

cdev_get_by_path() attempts to retrieve a struct cdev from
a path name. It is analagous to blkdev_get_by_path().

This will be necessary to create a nvme_ctrl_get_by_path()to
support NVMe-OF passthru.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alexander Viro <viro@zeniv.linux.org.uk>
---
 fs/char_dev.c        | 34 ++++++++++++++++++++++++++++++++++
 include/linux/cdev.h |  1 +
 2 files changed, 35 insertions(+)

diff --git a/fs/char_dev.c b/fs/char_dev.c
index 5cc53bd5f654..25037d642ff8 100644
--- a/fs/char_dev.c
+++ b/fs/char_dev.c
@@ -22,6 +22,7 @@
 #include <linux/mutex.h>
 #include <linux/backing-dev.h>
 #include <linux/tty.h>
+#include <linux/namei.h>
 
 #include "internal.h"
 
@@ -403,6 +404,38 @@ static struct cdev *cdev_lookup(struct inode *inode)
 	return p;
 }
 
+struct cdev *cdev_get_by_path(const char *pathname)
+{
+	struct inode *inode;
+	struct cdev *cdev;
+	struct path path;
+	int error;
+
+	if (!pathname || !*pathname)
+		return ERR_PTR(-EINVAL);
+
+	error = kern_path(pathname, LOOKUP_FOLLOW, &path);
+	if (error)
+		return ERR_PTR(error);
+
+	if (!may_open_dev(&path)) {
+		cdev = ERR_PTR(-EACCES);
+		goto out;
+	}
+
+	inode = d_backing_inode(path.dentry);
+	if (!S_ISCHR(inode->i_mode)) {
+		cdev = ERR_PTR(-EINVAL);
+		goto out;
+	}
+
+	cdev = cdev_lookup(inode);
+
+out:
+	path_put(&path);
+	return cdev;
+}
+
 /*
  * Called every time a character special file is opened
  */
@@ -690,5 +723,6 @@ EXPORT_SYMBOL(cdev_add);
 EXPORT_SYMBOL(cdev_set_parent);
 EXPORT_SYMBOL(cdev_device_add);
 EXPORT_SYMBOL(cdev_device_del);
+EXPORT_SYMBOL(cdev_get_by_path);
 EXPORT_SYMBOL(__register_chrdev);
 EXPORT_SYMBOL(__unregister_chrdev);
diff --git a/include/linux/cdev.h b/include/linux/cdev.h
index 0e8cd6293deb..c7f2df2ca69a 100644
--- a/include/linux/cdev.h
+++ b/include/linux/cdev.h
@@ -24,6 +24,7 @@ void cdev_init(struct cdev *, const struct file_operations *);
 
 struct cdev *cdev_alloc(void);
 
+struct cdev *cdev_get_by_path(const char *pathname);
 void cdev_put(struct cdev *p);
 
 int cdev_add(struct cdev *, dev_t, unsigned);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
