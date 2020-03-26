Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D7719461D
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Mar 2020 19:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuNIfdcjcXmsVYrkq77jpRVaonpwYSlAldmRxwLbFHQ=; b=uz7J4J3o943eMM
	8GqrA/5/SpaAlaKp9ThmHHC2ndFKjZ4JRf/zc/kfeOLYXhpUtfoYP5KRzM9tFhJdP/q9ElIecISLi
	nSGRacyj2MNJ0FjPGrDm0UHTYOAZwTxJCATht/o+7HygOoALYhSMPP5BtCZwi5nAUXmkIfGBzrCXK
	B2OfEHDIAUdKczTfviVrHpNfdYrVdLBp3R3Rv3LBKw9DnC5Kj3VkFP8jIgclOG0+cuc5q0x6u3XBz
	+S+fbp1FDVdFGLVxFJ4z/QwMhd0P7RJDffYYjYVDSKgOTQMtcukkD9dH3RiVLkkD4pvx7SYzpM0JR
	5LYqjngLBWAp7C6KL+CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWwp-0007rW-Nr; Thu, 26 Mar 2020 18:09:43 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvE-0006er-5x
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 18:08:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585246079;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mx5Y4A0vNKPVoyv1xHXaD8pmFgS8ayD4i+NDYQpBlnI=;
 b=dwoWr3kvqN1325lBlB4ptDB5ozzikaD4RRR/wPelg0r0GOrVAG1ANQo19QyuLofGXJY88k
 j1hELbjp5EPeqM1+YfHrn6N48ycXqziaZpKEfpNr5+iMsLqD0FI4HOOTrLbmGSAAZTJSJD
 ScnQSTEUNCF6jp504jN/DPAox3Jz9mU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-ffitk6zYMimBRZkSylnl7A-1; Thu, 26 Mar 2020 14:07:58 -0400
X-MC-Unique: ffitk6zYMimBRZkSylnl7A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E333100550D
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:07:54 +0000 (UTC)
Received: from sulaco.redhat.com (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9BB2419C69
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:07:53 +0000 (UTC)
From: Tony Asleson <tasleson@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 2/7] nvmetcli: Improve IOError handling on restore
Date: Thu, 26 Mar 2020 13:07:45 -0500
Message-Id: <20200326180750.469346-3-tasleson@redhat.com>
In-Reply-To: <20200326180750.469346-1-tasleson@redhat.com>
References: <20200326180750.469346-1-tasleson@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110804_312600_367678E2 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Not all IOErrors are caused by specifying a missing configuration
file.  When the file is present, dump the error exception text too,
so the user has a better idea what is wrong.

Signed-off-by: Tony Asleson <tasleson@redhat.com>
---
 nvmetcli | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/nvmetcli b/nvmetcli
index 3d8c16e..a646232 100755
--- a/nvmetcli
+++ b/nvmetcli
@@ -24,6 +24,7 @@ import os
 import sys
 import configshell_fb as configshell
 import nvmet as nvme
+import errno
 from string import hexdigits
 import uuid
 
@@ -674,16 +675,26 @@ def save(to_file):
 
 
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
 
+    # These errors are non-fatal
     for error in errors:
         print(error)
 
+    sys.exit(0)
+
 
 def clear(unused):
     nvme.Root().clear_existing()
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
