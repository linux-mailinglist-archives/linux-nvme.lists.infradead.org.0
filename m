Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE72C5D1B7
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jul 2019 16:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ho0hdNdAxZ+wDSXEmudjxa1MT60kwvW12Puob6hUetw=; b=VWVB4W2QR1ieoK
	soPumJJ3iR9YiA2e3rzcLruvsp0Pb2olKm1uAs2VT5FiuTFs4p4KBnT1GwukgRGiUh7A1P+T7Ihjp
	PLcJ4iGGqqHQcQJ1TqblEsQ6cSMcY4ykIgB4uoDPbgKJ2J7vvV5A8gh8eUsQ1C89KBPXuxvYZ3rtk
	8KfhwNftPCxcuGUqoQk9xUQc0bau1o3jIbVF6R2yln8R/v+62N7U8ODLBxSJHJoNQRInS4t/+R+jJ
	iJQ8UZRuhNByufRrPN3BqBTQGM5IruTlGSccq0npbm7tjA92rTwyLLVHcTzO8UUyc97VWef8FJSUX
	QZsKF6rFR6qmxEJSeuWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiJjC-0004Mk-MF; Tue, 02 Jul 2019 14:25:50 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiJj4-0004Lg-D1
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 14:25:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A94C568BFE; Tue,  2 Jul 2019 16:25:33 +0200 (CEST)
Date: Tue, 2 Jul 2019 16:25:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marta Rybczynska <mrybczyn@kalray.eu>
Subject: Re: [PATCH] nvme: fix multipath crash when ANA deactivated
Message-ID: <20190702142533.GA16763@lst.de>
References: <708068303.29979589.1561975811341.JavaMail.zimbra@kalray.eu>
 <6416b503-aa20-0094-6acf-101c60e9e3c9@suse.de>
 <1229162251.30096937.1562061155630.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1229162251.30096937.1562061155630.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_072542_598969_DE2E7B64 
X-CRM114-Status: UNSURE (   8.04  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Samuel Jones <sjones@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Jean-Baptiste Riaux <jbriaux@kalray.eu>, Hannes Reinecke <hare@suse.de>,
 kbusch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 11:52:35AM +0200, Marta Rybczynska wrote:
> > They idea was to use a 'ana_log_buf == NULL' as an indicator that ANA is
> > disabled, so there is no need to have an additional flag.
> 
> OK, still keeping the split of the helper functions?

I think we can simplify switch nvme_ctrl_use_ana to only check for
->ana_log_buf, and just opencode the actual capabilities check in
the setup path.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
