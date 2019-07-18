Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604216C3D3
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 02:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xbftf5wsKEbiMmSGlao3Yk29tHQzRd1O9SP6g5lj3fs=; b=FP18fR/XYF3Stq
	jJnCH9T7r8z0C5F2/bQnMZonqvDdCyZJiimpCfFN65HP9Ow40nWK+9rH1WpY954cYTBVjH0f82fwF
	52ueBlfSjLXGxtVz8NLllUu/seqbTNdJ6Ec5Mm2UrS8Aa07e8EOO2Bb6pDT8fHIsvPOasjrWEuu4+
	Rln97SEySecPzWmulChbHikV9BK3qSgfR02cTgkDlnRxf3ul9mu9u3lwEII+nsqt/vKCkTipIeXqV
	jGMVlm8yul1fxQOmpQY5fW9l6w6qAdaC4rzsvcc4/Zj1tx5wGXaIzvmx+DBXsqUFieg3iYsESVqV9
	KBWrl547ESL5EGvDT7Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnuUj-0004BW-La; Thu, 18 Jul 2019 00:42:01 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnuUe-0004As-VX
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 00:41:58 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6I0frnn026218
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jul 2019 19:41:54 -0500
Message-ID: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
Subject: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme <linux-nvme@lists.infradead.org>
Date: Thu, 18 Jul 2019 10:41:53 +1000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_174157_162428_6B826949 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi !

So I'm getting occasional abrupt shutdowns on the Mac Mini 2018. I
found out that it's the T2 chip that is panic'ing and shutting the
system down.

Interestingly, when booting into MacOS, we can get some kind of error
log of what happened. It looks like the NVME implementation on that
thing is a SW emulation done by the T2 chip :-) It's failing on an
assert due to a duplicate tag error...

Does that ring any bell ? Any idea what might be causing that ? (tag is
tag 8 if that means anything).

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
