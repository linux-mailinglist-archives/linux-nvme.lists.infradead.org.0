Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A442C18D9A5
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Mar 2020 21:42:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CCl+1njtmARmmBECXoRCIcTxvYPCRTqu+KuasQdAEU=; b=TvYi5FUTlWnGTB
	TLXsQg6y65fVyeJAA2IPcTgov822jdLbObba0PKjhcTfno5a5gYsVt3tQyhOp9NKTU7wPz5j2IPF3
	JAFMCSEPKumbu23ZzfT5NXH0QCipvBSRORfOqc1c7/McnuKlvvYh8l2BgZL75Sb1v5M6Q709HzRlo
	HahqVpFukwOjVA5TikLP2jYUl2tab3w5Vu44Cx7Y3exmxWx5C2bPgdU/RAfSdmYZ4nqZQXAArZ+gh
	vNGS+hYQZmuNk99YbVKRtUfdWfGp6OWa4hJBEIoZFRbbKoV3ZXUEEikny6kTM8oxLokkrWO6jMfLK
	Y2mvkRSuqJxUgS2NI6mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFOTc-0008Mk-9i; Fri, 20 Mar 2020 20:42:44 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFOSe-0007RI-H4
 for linux-nvme@lists.infradead.org; Fri, 20 Mar 2020 20:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584736903;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5BXLd1Dg9AaYGvaLYiBEBwWnK37h5kwq3nMnyqrr7Ic=;
 b=ED44CJR5lj5R232wEm7UOU/4p/pSyDivweOY2Y2UxqfVuK6ayUGu8CZlB+zBSZov20trMw
 fhfhpF05+5uagXltYUmIeZ99s2VlkLvd3RDsk1v5GC3md0NtG0kGC3y5cScCe9B2KoVqHV
 UqzY3xkCcvaK54hP9lmWcGXTr9LuMyg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-qr62DvyJNX-C4ivhLPcdAw-1; Fri, 20 Mar 2020 16:39:51 -0400
X-MC-Unique: qr62DvyJNX-C4ivhLPcdAw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F6E7100550D
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 20:39:50 +0000 (UTC)
Received: from sulaco.redhat.com (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8CB8790817
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 20:39:49 +0000 (UTC)
From: Tony Asleson <tasleson@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/6] nvmetcli: Improve IOError handling on restore
Date: Fri, 20 Mar 2020 15:39:42 -0500
Message-Id: <20200320203946.37338-3-tasleson@redhat.com>
In-Reply-To: <20200320203946.37338-1-tasleson@redhat.com>
References: <20200320203946.37338-1-tasleson@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_134144_639548_EC1B4917 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Not all IOErrors are caused by specifing a missing configuration
file.  When the file is present, dump the error exception text too,
so the user has a better idea what is wrong.

Signed-off-by: Tony Asleson <tasleson@redhat.com>
---
 nvmetcli | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/nvmetcli b/nvmetcli
index 3d8c16e..5553721 100755
--- a/nvmetcli
+++ b/nvmetcli
@@ -24,6 +24,7 @@ import os
 import sys
 import configshell_fb as configshell
 import nvmet as nvme
+import errno
 from string import hexdigits
 import uuid
 
@@ -674,15 +675,26 @@ def save(to_file):
 
 
 def restore(from_file):
+    errors = None
+
     try:
         errors = nvme.Root().restore_from_file(from_file)
-    except IOError:
-        # Not an error if the restore file is not present
-        print("No saved config file at %s, ok, exiting" % from_file)
-    sys.exit(0)
+    except IOError as e:
+        if e.errno == errno.ENOENT:
+            # Not an error if the restore file is not present
+            print("No saved config file at %s, ok, exiting" % from_file)
+            sys.exit(0)
+        else:
+            print("Error processing config file at %s, error %s, exiting" %
+                  (from_file, str(e)))
+            sys.exit(1)
 
-    for error in errors:
-        print(error)
+    if errors:
+        for error in errors:
+            print(error)
+        sys.exit(1)
+
+    sys.exit(0)
 
 
 def clear(unused):
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
