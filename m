Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9745194615
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Mar 2020 19:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRn4mW9qHS2O/Mor1KY9167IW1jI3IIfwhOtZ3VycHw=; b=R60i7fjzrGSIXv
	8QFvHy1meQcNSAhm0TuVoNgzqt4Nqd8tDLnvk0Ka2yA2nBklQ/43PmZPO+lnbX6gyTpPDyy9DaJFK
	nn0I9FgycEfmevzlr5Y2lME3/xUfwg+eSUzy1wSh5IULvx0TG2p5ejFcJ1Zbra943bZ29sCQb1O1Z
	HMImgVKpA5tCk1IVdqIlJc7Y7Iq0P6UbM1deaZjT/lkN39i5qI/nOKEhY4CFukPmF7IGTlkAFW46C
	MSSyXrS9kFAIW1R5dwunZ4xFavIbQyLfgftHUqnkQQvSNzBLCkCxZxnRHPDWkdgPd/KLDsyApDrq5
	clmThlknrtPCrywlLEiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWwF-0007Ny-CT; Thu, 26 Mar 2020 18:09:07 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvD-0006es-GY
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 18:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585246079;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Akfy6N4okkPQ+XxX8kNqtjBXdemJ/hx5rX78f7duhfo=;
 b=drgLf4wH56+t2lKKc1+9MU6hSAgVN0pje2VrqthCal+eR8DZEwxUfMMyfGp7wZpyWHJLML
 ipTbno4KeOzMcpKLafhR8RKpv/RV5Uq6NYSOK/2PuhfwmheRrRsKD6cY5TIcGzXwEru/zY
 2aASyw0GSX21KEiGkINpPuxGy0xz5OA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-328-y46lURIfOkGUP036ID4jgw-1; Thu, 26 Mar 2020 14:07:58 -0400
X-MC-Unique: y46lURIfOkGUP036ID4jgw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6F945107ACC7
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:07:57 +0000 (UTC)
Received: from sulaco.redhat.com (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D8CFC19C69
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:07:56 +0000 (UTC)
From: Tony Asleson <tasleson@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 6/7] test_nvmet.py: test_invalid_input fails for py3
Date: Thu, 26 Mar 2020 13:07:49 -0500
Message-Id: <20200326180750.469346-7-tasleson@redhat.com>
In-Reply-To: <20200326180750.469346-1-tasleson@redhat.com>
References: <20200326180750.469346-1-tasleson@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110803_622840_4EB94B2B 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
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

When you run 'make test' using python 3 the unit test
test_invalid_input fails with:

Traceback (most recent call last):
  File "/someuser/projects/nvmetcli/nvmet/test_nvmet.py", line 395, in
test_invalid_input
    for i in range(l))
  File "/someuser/projects/nvmetcli/nvmet/test_nvmet.py", line 395, in
<genexpr>
    for i in range(l))
AttributeError: module 'string' has no attribute 'lowercase'

Python 3 does not have 'string.lowercase' ref.
https://docs.python.org/3/library/string.html

Python 2 does ref.
https://docs.python.org/2/library/string.html

Both have "string.ascii_lowercase" so lets leverage that to
support both.

Signed-off-by: Tony Asleson <tasleson@redhat.com>
---
 nvmet/test_nvmet.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nvmet/test_nvmet.py b/nvmet/test_nvmet.py
index 5caa546..aae4a86 100644
--- a/nvmet/test_nvmet.py
+++ b/nvmet/test_nvmet.py
@@ -391,7 +391,7 @@ class TestNvmet(unittest.TestCase):
                           nqn='/', mode='create')
 
         for l in [ 257, 512, 1024, 2048 ]:
-            toolong = ''.join(random.choice(string.lowercase)
+            toolong = ''.join(random.choice(string.ascii_lowercase)
                               for i in range(l))
             self.assertRaises(nvme.CFSError, nvme.Subsystem,
                               nqn=toolong, mode='create')
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
