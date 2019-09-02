Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AC5A5AC5
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 17:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sf3qMr7DXfiDcYI7an5xyCrGIfFZtUq0Km839JV3sLk=; b=bdvOkpYS56EmQ/
	LKbXBNBL+h/V34XNSe+TBMfJ3J3sZ7Hvy4uCYPCyiUTVTiSjmplejrVoGikkIUdpuLdvxKcVVgQrp
	K7QSD6NpnI3M3sHFVPH8kTObUQwcPpxRka42bIAkc4n0yWnP3H6ojmBXYYEUa3LGPfu/RBNhISQ/b
	xql2JeFeu/2OTOmM+xLSqZCHw2q4voaMqvvl2G9fAXOgl0Al0sFxBtnQvqA+jmCkQFXJ/XEZeMDHK
	OhAoexfDzBWkWTKpeKhdkjM2L8fIo80xzBbdDGLuP21nUYuvmIiMCecIRRIfjpU1fhzBQI7oCPBQ2
	R+iys6LI1pO+jWakJKlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4oYL-0006ub-Gc; Mon, 02 Sep 2019 15:47:37 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4oYB-0006s4-S9
 for linux-nvme@lists.infradead.org; Mon, 02 Sep 2019 15:47:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5F5B968AFE; Mon,  2 Sep 2019 17:47:24 +0200 (CEST)
Date: Mon, 2 Sep 2019 17:47:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/3] nvme: introduce nvme_finish_cmd function
Message-ID: <20190902154724.GA5688@lst.de>
References: <1567436462-23218-1-git-send-email-maxg@mellanox.com>
 <20190902151348.GA5034@lst.de>
 <174b3d7d-3d57-7529-c504-542fbec7299a@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <174b3d7d-3d57-7529-c504-542fbec7299a@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_084728_125452_BFC65470 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, martin.petersen@oracle.com, israelr@mellanox.com,
 james.smart@broadcom.com, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 06:42:43PM +0300, Max Gurtovoy wrote:
> I can check this out.
>
> So scsi layer always use blk_mq now ? no legacy IO path possible ?

Yes, the legacy I/O path has been gone for a few releases.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
