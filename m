Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040DD18F035
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 08:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWvMlqzeSoWnbE+4mN656ueyiRa55YSS/x/czwayM7E=; b=ixZgPln22xYOLt
	/z5S7UWHtKLyDPjAPkZEfKmkQOD3fGGU6sjmsxRLy011SnxbjQyJ0PxqRI7MfXHGWHIoLBVzutQRh
	felWiqWjifV0cEEjnlQvbHiebMnwVlaf3dDva9SyDkWYkTDrAZijxCCQ/Eh3wAJRPsGGPNsvHc09s
	On2AWD3gz70HD+kovNDTGvgSTevooVvfrRc0+qi0RhHSaXgDOts5XC7UODHTLSey29FudqDSvxY/e
	vwNsIv159tobsOM8C8Q7U+MvVmHbg3D77Jg0nvo3bwAKjWa7e1R/brJFNjSPiuohWDFEYGpjOp8Fc
	G5xn9FlnDe8iLBd0UttA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGHUe-0000vq-RF; Mon, 23 Mar 2020 07:27:28 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGHUb-0000vH-3N
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 07:27:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D3FEB68BEB; Mon, 23 Mar 2020 08:27:19 +0100 (CET)
Date: Mon, 23 Mar 2020 08:27:19 +0100
From: Christoph Hellwig <hch@lst.de>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 2/6] nvme-pci: Make nvme_pci_free_ctrl symmetric to
 nvme_probe
Message-ID: <20200323072719.GA30302@lst.de>
References: <1584899989-14623-1-git-send-email-israelr@mellanox.com>
 <1584899989-14623-3-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584899989-14623-3-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_002725_290765_FA52137D 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 07:59:45PM +0200, Israel Rukshin wrote:
> Destroy the resources in the same order like in nvme_probe() error flow.

It also moves some calls from the ->remove PCI driver method to the
nvme_ctrl_ops ->free_ctrl method.  I think that looks safe, but it needs
to be properly documented in the changelog, including why you think it
is safe and useful.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
