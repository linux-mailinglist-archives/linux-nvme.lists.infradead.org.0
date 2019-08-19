Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6790E91E19
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 09:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LcCzQgt9iikMJ1NqraqP58+YHjy8kAjP5DjlwEwL9Qg=; b=XjyYab6k+cTMGLJmQUQ4qXYtsc
	i76NizyUB5vaEgVJmOJNXYnBChKXnbtmN6bY4Y0QjEJzy9NjZABr/dC56t6qQRmVTTPmhV68kpDK6
	8Fk1q4AgK0ALzTIycqvN8xwcCnuWJbWzhNQdDq+Fc1LonobPOZzRDhtbzT51UK2G65ALtA9DbKP4e
	JbBf15rzdjQivHKfjVBgdpGIz3bcKjOXVfUmUF63vvvpHBJe+2EQJ0xkkvKlByDRCyN4RgD72dtzM
	6goXIYzemxj38tEWcRFzt8hu2+vRGhH5uIjtgFbr7XNaoHEiDqT6XkVHn0zYk6slDf333gANYmo1V
	o6F/xnMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcIa-0004tb-Lm; Mon, 19 Aug 2019 07:41:52 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcIP-0004s8-Ay
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 07:41:42 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 9300DA4005E;
 Mon, 19 Aug 2019 07:41:33 +0000 (UTC)
Received: from linux-m89u (134.19.179.139) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 19 Aug
 2019 08:41:27 +0100
References: <9efc495c41b7bf050362a3a7eb64b5809092afd6.1565280170.git.mskorzhinskiy@solarflare.com>
 <1febf497-e92e-6acd-1968-50ae7735ec79@grimberg.me>
 <a83f9206-4e09-3522-8574-1f9887491e2a@grimberg.me>
User-agent: mu4e 1.3.3; emacs 26.2
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: exclude completion trace from non-multipath builds
In-Reply-To: <a83f9206-4e09-3522-8574-1f9887491e2a@grimberg.me>
Date: Mon, 19 Aug 2019 09:39:38 +0200
Message-ID: <87ef1h38p1.fsf@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [134.19.179.139]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24856.003
X-TM-AS-Result: No-3.172600-8.000000-10
X-TMASE-MatchedRID: +c13yJDs901jFj/UuKzq9QD9gX5aXd4fAPiR4btCEeb8kFwgcyoo4XEw
 XQeqkv+8QFynu/JuWlv5n5AGmg4vC2D2rk9aaf8S8pRHzcG+oi0weWdrZxtkgt1pwI+/Rc3i5Ok
 VfZ62ONZ9LQinZ4QefCP/VFuTOXUT1AozErC5dcfkwjHXXC/4I8prJP8FBOIaLyUV9bAUSPynA3
 /q9/hpNiyFf9t7+BmRtTVwckzBukx8wGQlQ//fQFvhCde668/zYGwWn0QN9NZ673bgdtFdGC70e
 6gjxCUIbdjePWqOpMh7g0S+mmzdW5OvmsuDv11E0luiaG/1G68PBuvvoQfFww==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.172600-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24856.003
X-MDID: 1566200494-OwfmPah9oaNH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_004141_414219_A1DB841F 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Oh, sorry, I sent a respin but I get messed with date of mail somehow,
it is dated a few minutes later then original patch.

I sent another respin with a normal date.

Sagi Grimberg <sagi@grimberg.me> writes:

 >
 > > The call should not condition on CONFIG_NVME_MULTIPATH, but the function
 > > implementation should be left empty if CONFIG_NVME_MULTIPATH is not
 > > enabled (see nvme.h).
 > >
 > > Also, lets call it nvme_trace_bio_complete..
 >
 > Hey Mikhail, are you sending a respin or should I?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
