Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15FE63D34
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=toihjwBfYcQyyA
	FEMInVbCz0W7Iw9gs2KIZ+gSP0l/j4arm8trf/+UOcAY3nY+hL9jGP5jpa94HQtenOAnDbhMPyeyC
	T3Qy46AeDtb3/yKH0U+Kd60s2Q1wQSydCOlN/xXXFh3VG5VHh0+YWkIpTRj1iqZt08jwhnr3BgrAy
	tZrYBQLf1BoYMakpb0Kw4XefCfmjNJt3CpY6GVmd03c2+1Y9wdRrRH1Kh88X/esAH7owDSbUoiQeG
	zzUWpFN0bREm5In+pUtFvEHicL4pcxPiOqF596IprdO7IVHFuOO6GY+Jpp3cxGHsQT3IqQLmnlswr
	Dj0Vt4s2XZPntv3s0OMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxX5-0005k2-Ll; Tue, 09 Jul 2019 21:20:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxWq-0005Nn-FT
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:20:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0ED7C68B02; Tue,  9 Jul 2019 23:19:59 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:19:58 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Subject: Re: [PATCH] nvmet: print a hint while rejecting NSID 0 or 0xffffffff
Message-ID: <20190709211958.GB9518@lst.de>
References: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142000_717384_14E55AE8 
X-CRM114-Status: UNSURE (   4.83  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
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
