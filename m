Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A279C994
	for <lists+linux-nvme@lfdr.de>; Mon, 26 Aug 2019 08:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vBQpENQdx6q06lu2Vi1nFdfNQ9WU+ul4kmhDbttD6c=; b=aGaFcQblAKoseZ
	4ASClmXqnA+LGzbr3jQwwVhkdQulHlVqVxgdqsm7ousfBy3X5O4/fY7Uk2YRtr8Rl9VDVCDFvkQ7Y
	bITFIn3Iof4620Hb+ThivexqLBW841Qn/kdcc68cN7kLFe3Okaa+q18NucqAcywdLxablphzWdUo0
	2foEau6rBMUidOSh7FoKWO13Mvw679Fsdh7FVCbfa1KcbRNrNZDJ0v65DGBW6CPke7g42c0bVaooR
	ctN0nlkoqbroNKAp4cZTlC53lfXepiggMPNZfKP2JS1j89rnPMRzUN8g4i1pn1SQKoX9PIftfhuQj
	glcBWU+vdLezLy1Xul7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i28j3-00017E-JC; Mon, 26 Aug 2019 06:43:37 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i28iu-00016r-3x
 for linux-nvme@lists.infradead.org; Mon, 26 Aug 2019 06:43:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 33A4668B20; Mon, 26 Aug 2019 08:43:25 +0200 (CEST)
Date: Mon, 26 Aug 2019 08:43:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v3 3/4] nvme: enable aen also for discovery controllers
Message-ID: <20190826064325.GB10911@lst.de>
References: <20190822222818.9845-1-sagi@grimberg.me>
 <20190822222818.9845-4-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822222818.9845-4-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_234328_313905_C009BD41 
X-CRM114-Status: GOOD (  11.06  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 03:28:17PM -0700, Sagi Grimberg wrote:
> If the controller supports discovery log page change events,
> we want to enable it. This changes the ordering of the
> scan work and the aen work queueing, but that is harmless.
> 
> Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
> Reviewed-by: James Smart <james.smart@broadcom.com>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
