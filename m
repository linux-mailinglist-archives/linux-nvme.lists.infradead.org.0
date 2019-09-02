Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C97A5199
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 10:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3xCU1a2Aq1PByJjPtZyL72/vGKKMlhJQ7UYSRYTNto=; b=huTb+2Z/RDk5n3
	m5hpQz3pDeyolSh25MK7GDebYlkfGRBt8gY48iHxfpHrzEaEcY4HFQq8mfu8lQnMtjUkXnk9e9sxA
	tCUqX7yfetIhPCROfXlJJRphcMgiQp/DQAneuQP+kXFJah65LX7bqMta7yAqpbqM/9b0Pq2zJ5QYl
	wAPlb7UMw5l8XC/f/M7DD6gXRAOHmy8HaB/i50lkCDSoOrIplADYjWk4so1oDSKP9A9pJnqoxCkuY
	V/AYnnWIBpronokiHkNUVvKrfp+oRs6HIpuJXEe8LuAxS3mHkZx4s+DyLIz8gorBF7fLHfUjCbYoU
	aMUjgUYfbNdMK53s9k+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hif-000069-0z; Mon, 02 Sep 2019 08:29:49 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hiT-00005I-8r
 for linux-nvme@lists.infradead.org; Mon, 02 Sep 2019 08:29:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7D5E0227A8A; Mon,  2 Sep 2019 10:29:33 +0200 (CEST)
Date: Mon, 2 Sep 2019 10:29:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marta Rybczynska <mrybczyn@kalray.eu>
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
Message-ID: <20190902082933.GA29909@lst.de>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190822000652.GF9511@lst.de>
 <1678802062.58145473.1566818428010.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1678802062.58145473.1566818428010.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_012937_465736_6A3C3072 
X-CRM114-Status: UNSURE (   6.11  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 01:20:28PM +0200, Marta Rybczynska wrote:
> Do you mean something like this?

Yes.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
