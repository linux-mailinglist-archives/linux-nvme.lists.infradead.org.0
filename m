Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E63719B649
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 21:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MH20PpqGE3fCGcLsgC7LT/yjLK5rLELXuAVUHq4TTEo=; b=D4pOSq68ZxsBcV
	42KKOXhhUss8rEFIYZxkQCR2jDzBQEdecSPShN5WD2dN2k6TLwc9n+wCTF8TuXUI1TQhfWOfNCVDv
	zTFq1nqR1Fu/soUpzgp9b+gWoISO0CvJWnnThYq86SRfqKBMm8GUjtc1StuCTSQnpDckC/fcTOaen
	RxNfZXQDTAq4YYQsuxNX+ksJG2yE5fAsZXBy/bE9IRj9HNEuMf0ZT7LBIBnafS6dNxZrZH903Q9e4
	8ff3ilViXg/afy9gD7bVv/sLsJpSsqph0N6WeRlemJexnnzZpVsyQc5Pa9udB1HBAJYOUbofatViZ
	q30PeXcwgl7udmVY8mkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJinn-0008IF-WB; Wed, 01 Apr 2020 19:13:28 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJini-0008Hm-L9
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 19:13:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585768401;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xKVait/Qan6TnSLfbb2nifKm1288T2wZIihW0OrsN5A=;
 b=KUKo3kY9LUegIrBLykIH4MZ62CEDVO+syhqCpbINylGjDrNltMSSV5wdFeX+ZeH7MmEacZ
 N7232Nn+k18M2yv4L0OvfrajEgA2Tn6kJeWkaB3oGjaynznPl5jNf1dXSd+nXZIgbPu7CA
 dG8WIooxeeXsqg5/vVfknya06kLoQSc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-56-ouoGTTH8NkKD2KWzGnSYkA-1; Wed, 01 Apr 2020 15:13:19 -0400
X-MC-Unique: ouoGTTH8NkKD2KWzGnSYkA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9E18801A10
 for <linux-nvme@lists.infradead.org>; Wed,  1 Apr 2020 19:13:18 +0000 (UTC)
Received: from sulaco.redhat.com (unknown [10.3.128.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 442AC5DA7B
 for <linux-nvme@lists.infradead.org>; Wed,  1 Apr 2020 19:13:17 +0000 (UTC)
From: Tony Asleson <tasleson@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmetcli: Correct xrange usage for py3
Date: Wed,  1 Apr 2020 14:13:16 -0500
Message-Id: <20200401191316.54355-1-tasleson@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_121322_767065_2E6EC410 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

If you are in a namespace and simply do a 'create' without specifying
a value you will get:

/subsystems/n...f8/namespaces> create
name 'xrange' is not defined
subsystems/n...f8/namespaces>

This is because xrange is not defined in python3 as python3 changed
it to range.  As the code is already using six use six.move.xrange
which works for both python2 & python3.

Signed-off-by: Tony Asleson <tasleson@redhat.com>
---
 nvmet/nvme.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/nvmet/nvme.py b/nvmet/nvme.py
index db8a03c..83fd75b 100644
--- a/nvmet/nvme.py
+++ b/nvmet/nvme.py
@@ -23,7 +23,7 @@ import stat
 import uuid
 import json
 from glob import iglob as glob
-from six import iteritems
+from six import iteritems, moves
 
 DEFAULT_SAVE_FILE = '/etc/nvmet/config.json'
 
@@ -556,7 +556,7 @@ class Namespace(CFSNode):
                 raise CFSError("Need NSID for lookup")
 
             nsids = [n.nsid for n in subsystem.namespaces]
-            for index in xrange(1, self.MAX_NSID + 1):
+            for index in moves.xrange(1, self.MAX_NSID + 1):
                 if index not in nsids:
                     nsid = index
                     break
@@ -816,7 +816,7 @@ class ANAGroup(CFSNode):
                 raise CFSError("Need grpid for lookup")
 
             grpids = [n.grpid for n in port.ana_groups]
-            for index in xrange(2, self.MAX_GRPID + 1):
+            for index in moves.xrange(2, self.MAX_GRPID + 1):
                 if index not in grpids:
                     grpid = index
                     break
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
