Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA0F18041A
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 17:56:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWurlnGz9xaTdokkQUV9UoxZBIFWdzEaIoj4WjzHtZY=; b=QaBTZ5FhrUprgY
	u6QYqRuNwJTVFDITGbWBiPumwsrUlLbiXw+CYtPQGyo5Xqn8G+vvebth2Uh3n3Rb/K5xtVnTMg131
	+o0meJbovcbmrXQsOi6cN8pEdYq1uqt7k0ZeHTx0u185RVr2U/LRgj7HxhhxVpKBE/MArMm+sGkcm
	H6eCZvVyFioJtF+yzo1g6lNB2YVMVGWGYI8ghXIGskWWXZ2Hb25yB/3iK/pb6Vs9pSkxhNn22lvcW
	xGITsRpOWvNisyzX6tT5N+AVRSUtAY8SBBRrPollUDpXofzphy7kXJmNdIoNhUgWQRJ2Fm5a3h/Q1
	bxGURBD041kbO6ISugRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiBW-0002XH-KM; Tue, 10 Mar 2020 16:56:50 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiBI-0002Oh-7A
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 16:56:37 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C03CF68BE1; Tue, 10 Mar 2020 17:56:33 +0100 (CET)
Date: Tue, 10 Mar 2020 17:56:33 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 1/3] nvme-pci: Remove tag from process cq
Message-ID: <20200310165633.GA7114@lst.de>
References: <20200304181246.481835-1-kbusch@kernel.org>
 <20200304181246.481835-2-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304181246.481835-2-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_095636_405612_6A8DC6F4 
X-CRM114-Status: UNSURE (   7.15  )
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
Cc: bijan.mottahedeh@oracle.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 10:12:44AM -0800, Keith Busch wrote:
> The only user for tagged completion was for timeout handling. That user,
> though, really only cares if the timed out command is completed, which
> we can safely check within the timeout handler.
> 
> Remove the tag check to simplify completion handling.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
