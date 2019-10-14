Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D36D65DD
	for <lists+linux-nvme@lfdr.de>; Mon, 14 Oct 2019 17:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PidjA+W5IlfJNaRQcEVBmI0DEt8Zz+iNiiA90TBIJrI=; b=mCSB1xHHd4VVoK
	/sEquZPj+00EoAzlFp0/SjroYiTt20BDvsKwjsKW3R0PtD+Oy4S3gRQHAxDzzvshXlDM86V6YcOIh
	NmN0YiovIhn4EjovIfx7DsiH5wBRTjx4ZqADZlRNS8DeBI8MiPmQoI384CeitJsttyWNbeV3DyLTr
	lt1UWAqDhVjGg/xj419Gg3Fy5Uu6w1AsuJkPETT0HBrGfOVbc9du20PDOFcbABpc1tuTEQQfgbA87
	ajJwdkfM2bPXMpRqVo2ggR2dXnZ/AAZAxHqfwg7a2HA2x4MCqTFqY8vGJD9CV08ibFrA/mjw9MT1y
	wfRcd/CgJrVIDHgBFcCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1vt-0000CM-HI; Mon, 14 Oct 2019 15:06:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1vn-0000C1-V2
 for linux-nvme@lists.infradead.org; Mon, 14 Oct 2019 15:06:45 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFF512133F;
 Mon, 14 Oct 2019 15:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571065603;
 bh=SLns/uIZmmOh3WeUfNq4XOOJaSMymeaggmHNRCacIWo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CWxXgSWDfd3GQumMj7bx60zMY7sp31e+VLeN6t/bjehL2OzEQ4XrMPoik9knrgs3R
 EnaavWu95iwwAMWS08umEWEtwsRB1BJOGWrf+kOin2/EZcB3t8M+5TKEsle8qwDjC5
 ALWems0TJIho229bqLWKKZQCUexqvY37PbZGErWg=
Date: Tue, 15 Oct 2019 00:06:40 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCHv4 0/5] nvme: double reset prevention
Message-ID: <20191014150640.GC6142@redsun51.ssa.fujisawa.hgst.com>
References: <20191010165736.12081-1-kbusch@kernel.org>
 <12fd3758-ff71-c02d-1545-5ce8189c2c59@intel.com>
 <20191011162714.GB75437@C02WT3WMHTD6.wdl.wdc.com>
 <20191014071536.GB10081@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014071536.GB10081@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_080644_017029_811D545F 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Judy Brock <judy.brock@samsung.com>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 09:15:36AM +0200, Christoph Hellwig wrote:
> On Fri, Oct 11, 2019 at 10:27:14AM -0600, Keith Busch wrote:
> > Christoph, any remaining concerns on this? If no, do you prefer I push
> > this to 5.5 or 5.4? This fixings reported bugs, but it ended up a bit
> > larger and later than I originally hoped, so I'm okay either way.
> 
> We're still relatively in the 5.4 cycle, so I think we should aim
> for that.

Thanks, applied to nvme-5.4. Will send the PR mid-week.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
