Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2756763D3E
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbadW8YN7bQJEIAHCxs2j/p6srRxf1lePnK+8dltxIc=; b=Cx70M2t5T5BBkI
	b9olV4Jw5oXHKo1MDeEfPY4iuqO7cZEg8tt+pp9VR6518G9t9C4aEuB8eadBhw42bVJ6f7GZ7nnF8
	s3vh4Qmcx9o9c3znJ436lVafURE2oGHyvokxJv7eUW7DFG/F4wSCFaSxm0UdV8pYUL9AFP4q8JJHZ
	PcLxJ5pzzsjl3M6NcLRFzk3qF+gYL773KYfs7WkNpx61GtMTQ2XRo08KdFJ8oGKnZCZOB2Du/EVzl
	zg4+q0oqlf9t1e456mJztc8jPpwxIPxH0pSHhmITEPGKNGUX0v95eGis+X1OSqRNMD25uVA9L7wZ4
	0wNNcv4dvyfLYaxaT4bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxZb-0007Qy-J3; Tue, 09 Jul 2019 21:22:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxZR-0007Qg-VC
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:22:43 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B101468B02; Tue,  9 Jul 2019 23:22:40 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:22:40 +0200
From: Christoph Hellwig <hch@lst.de>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH] nvme-pci: No IRQ map for read if no read queue allocated
Message-ID: <20190709212240.GF9518@lst.de>
References: <1562606652-7618-1-git-send-email-alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562606652-7618-1-git-send-email-alan.mikhak@sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142242_148174_04CBE1A9 
X-CRM114-Status: UNSURE (   5.19  )
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
Cc: sagi@grimberg.me, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, paul.walmsley@sifive.com,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3 with a little massaging of the commit log.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
