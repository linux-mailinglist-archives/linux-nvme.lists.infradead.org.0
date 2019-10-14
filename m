Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E219CD5C05
	for <lists+linux-nvme@lfdr.de>; Mon, 14 Oct 2019 09:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MO7kZX41KWslPRuaHmq53CkGHFZjh0yKJFW/n1rRwA=; b=il96JnLl3xAviH
	3J7X7HnVi7MsrStWNBNdx9/N1rzct+k4NGRfvzgp9LGIieGwg+siTNNmBb77PU+EZQMExMRooMH8X
	NUhXkvnINnRm3PbPa3Hp38/wOG2pYfWwfgiSJaywM7h9LOAGTa1vbdxh5Un7Xc+yWxkkSed6FZvAh
	MbahTZpAVN7LJm9Cc2vrryhjqhN4T9v4kgygdXU8d6piGhXZ73IlcaFQ2X0ljm0qL46l52f3Y58Pa
	wf0sWoVPSvOET+Kma0Ux3oxyJp6Zg/pr8HOJJ4o2CeHOwGSiA/mWfqiBj2bVd5Jnb4tZF09no2UQi
	maPlxcoXRYwUDzLCYylQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuZV-0007oB-QK; Mon, 14 Oct 2019 07:15:13 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuZL-0007HG-2T
 for linux-nvme@lists.infradead.org; Mon, 14 Oct 2019 07:15:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 77E0968CF0; Mon, 14 Oct 2019 09:14:59 +0200 (CEST)
Date: Mon, 14 Oct 2019 09:14:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv4 0/5] nvme: double reset prevention
Message-ID: <20191014071459.GA10081@lst.de>
References: <20191010165736.12081-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010165736.12081-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_001503_310217_C631A3A3 
X-CRM114-Status: UNSURE (   5.80  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Edmund Nadolski <edmund.nadolski@intel.com>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For all the remaining patches:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
