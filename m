Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90661E7D26
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 14:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLNE5uKdEsp2hBt9+js4Bn+ZQqiefL+p66uk5Lml7/8=; b=QSIHLrwaOxjPqR
	jp8+fngZfxuJIAFuoQlw26SlQhmstim88WsqVO+eTcdyogJ5IOKpDn97chHsAXo+wXt+fPNJXVtwM
	7FFDAKIlaxDiZX/uo/AnT2LDQDdZgf9c9PfHfGEgQtxHw0BYLV1Ymeg7TToF0N5v6yTiqKoYXqKdK
	lCO6Gx6d88J0R5j4hcFDKwV2ySoFC+2GXF7BSMgn76c32FVGHgLg2Kd4AAmsme09Kc0ftgJ3COFBF
	jnKEWZL7/wpK/i01nlt3acP05aAiqx+kj/MylVX1eRhHmuz/P85izr0YYG/2KU7ompA7z4OngGUv+
	o6gfURfFv1gcbBdHIo/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jee6K-0001sh-Gh; Fri, 29 May 2020 12:27:04 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jee6F-0001rl-Gl
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 12:27:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id F0F8468B02; Fri, 29 May 2020 14:26:50 +0200 (CEST)
Date: Fri, 29 May 2020 14:26:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 1/2] blk-mq: export __blk_mq_complete_request
Message-ID: <20200529122650.GA28107@lst.de>
References: <20200528151931.3501506-1-kbusch@kernel.org>
 <20200528164256.GA25651@lst.de>
 <20200528181807.GA3504306@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528181807.GA3504306@dhcp-10-100-145-180.wdl.wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_052659_724515_88DA28B8 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-block@vger.kernel.org, axboe@kernel.dk,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 11:18:07AM -0700, Keith Busch wrote:
> On Thu, May 28, 2020 at 06:42:56PM +0200, Christoph Hellwig wrote:
> > I think this needs a better name.
> 
> blk_mq_do_complete_req()?

do isn't exactly descriptive, is it?

blk_mq_force_complete_request maybe?

And yes, I think for 5.9 we need to lift the error injection into the
callers, this is a mess..

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
