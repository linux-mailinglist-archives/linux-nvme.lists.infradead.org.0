Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAEF7A60B
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 12:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=X3pAzDi88mys3w
	2kGldYPRjoWv3+SgoqaUOYpnWX6Nfc9YmomU1lqHxjjdqaa7aAumL/G01V6oYy9G20d74bL/7i94y
	rMHk+j+1j5bo3Bos6yQdlWQSyK5KCSWo1TngJbVNa9i1bcv8IHA1u3flaOTFoa4piz6Hj6gqEhetO
	2E8wvkJT4FSoNtULVkMA5wcFbHEgFSPrfbd50kFwUamK5IZuLrVoeV5PRPDsTD93Hl8a0FPDXe6tJ
	RDYy6P13pUyK//JSZCEvJ/fEzWWpc1TyB1K18O7szmEyaeX15LKhWgpUUTKWL+szy24Xu3YUTfGs8
	uZ7WmO4bKcRAjtSCP2zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPOK-00019c-SR; Tue, 30 Jul 2019 10:30:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPO5-00018z-4p
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 10:29:46 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 27BD868AFE; Tue, 30 Jul 2019 12:29:41 +0200 (CEST)
Date: Tue, 30 Jul 2019 12:29:40 +0200
From: Christoph Hellwig <hch@lst.de>
To: Anthony Iliopoulos <ailiopoulos@suse.com>
Subject: Re: [PATCH] nvme/multipath: revalidate nvme_ns_head gendisk in
 nvme_validate_ns
Message-ID: <20190730102940.GA1813@lst.de>
References: <20190729124040.16581-1-ailiopoulos@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729124040.16581-1-ailiopoulos@suse.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_032945_345814_24F57551 
X-CRM114-Status: UNSURE (   5.60  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Keith Busch <kbusch@kernel.org>,
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
