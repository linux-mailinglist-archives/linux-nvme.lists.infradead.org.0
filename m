Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB74163D37
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=HjoMw0ZugZX48c
	qwAtyU9hISA2IuI3oiAEFHEhkqg+FXTl5myMHaFx+Yx+25u8lQMm1zVuaCu2vuY4iQzk360KvQHBb
	d58PmcrBiHyB/SqHOsO/6R1Jmr69RUy/UJSAn38RUMtmGvHgM3/QVKOhEIZonstQiyAWIRqLtN+nL
	h/oShA2uJ2Jf6MLIRqf/9kb56JhqblPeAGiwcBrVPt2IX4L9YrGyYxRd+UWEdjcMggupAKeJJ5mMV
	yEX5JG43Lk6Hni3QTtoYxzeCoiq2jRs9LRE84zj4VpDrNARHUSn9D59RQTKFKW4kRA6aRrMfki2Qr
	mx8Y41STfb9GJIV0+g2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxXZ-0006pZ-23; Tue, 09 Jul 2019 21:20:45 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxXQ-0006pG-49
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:20:37 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E1B8968B02; Tue,  9 Jul 2019 23:20:34 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:20:34 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Subject: Re: [PATCH v2 1/2] nvme-tcp: set the STABLE_WRITES flag when data
 digests are enabled
Message-ID: <20190709212034.GC9518@lst.de>
References: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
 <c34300a7199db40be3cfe0ac729ffabe77fb8a1d.1562586804.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c34300a7199db40be3cfe0ac729ffabe77fb8a1d.1562586804.git.mskorzhinskiy@solarflare.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142036_310569_8F0AC102 
X-CRM114-Status: UNSURE (   5.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mike Playle <mplayle@solarflare.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
