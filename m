Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DF913D57D
	for <lists+linux-nvme@lfdr.de>; Thu, 16 Jan 2020 09:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tzHAg3Ug0LiieMMQIv0xBOBaS4ocC6F0vsGX/wGcsvw=; b=tdwMHQFP+mWLCk
	s3rPdJdyMqwHKPpolxA52bfi2bAbBohJpeqd1MqzgAWS2mbGVtLwQAlcygIKGy4sUWZFugWw3ctNX
	vFBGPMVEtG6ih0YZL/x6zzmgGW6z9h2BV9L2DGAPxsBKbMj+m+dyr/G2EnF78Mx2Wmui2RTMxyM/+
	rE1YS7PQobWQIsE+WrN9ZbRn6fiR3CW10cvxj5TwOQQVKI4aKe7Prw3clOmxuRCCKZykrBuaFdMM/
	KpNxdyR42/ApOaiiz/xvK31aoUL7CksbSxM6D/ja9DzZXy5bcOEbef9+mZGmd1OWKZS2xI3r6x9IC
	hL9waXTY9tvaOYi1Y5Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is04e-0002Ls-Jm; Thu, 16 Jan 2020 08:00:16 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is04W-0001YY-88
 for linux-nvme@lists.infradead.org; Thu, 16 Jan 2020 08:00:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579161604;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=cF100Kpe8rgX7QqusLPX6qF1BdKTwdNGVRZPINFLRgw=;
 b=hKrshtk006URXM3l4WbB/Hwehkk/ctxrY6/+cUqjBMOVrrpqo/KfImKEFpe+Zd4Y0q3UBB
 1jawsdiyOypZJtZGM0PrmhPhhtKOo8Ze8y1aoG+0e2jDL7S21qC9zJkFxCNjT7lnEjWNX6
 Kl9YujbdMF4H676H6ldEnv3iGWnFBio=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-148-b573FJ-cM52peBPjbnQRWA-1; Thu, 16 Jan 2020 02:57:10 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 93D7F800EBF;
 Thu, 16 Jan 2020 07:57:09 +0000 (UTC)
Received: from dhcp-12-105.nay.redhat.com (dhcp-12-105.nay.redhat.com
 [10.66.12.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B4DD60E3E;
 Thu, 16 Jan 2020 07:57:08 +0000 (UTC)
From: Yi Zhang <yi.zhang@redhat.com>
To: kbusch@kernel.org
Subject: [PATCH] nvme-cli: memblaze: change to 100644 mode for memblaze-nvme.c
Date: Thu, 16 Jan 2020 15:56:58 +0800
Message-Id: <20200116075658.24938-1-yi.zhang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: b573FJ-cM52peBPjbnQRWA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_000008_541558_822975A9 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Bellow WARNING observed with rpmbuild -bb rpmbuild/SPECS/nvme-cli.spec
*** WARNING: plugins/memblaze/memblaze-nvme.c is executable but has
empty or no shebang, removing executable bit

Signed-off-by: Yi Zhang <yi.zhang@redhat.com>
---
 plugins/memblaze/memblaze-nvme.c | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 mode change 100755 => 100644 plugins/memblaze/memblaze-nvme.c

diff --git a/plugins/memblaze/memblaze-nvme.c b/plugins/memblaze/memblaze-nvme.c
old mode 100755
new mode 100644
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
