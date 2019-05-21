Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A860724553
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 03:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4aBd8KXrQjw3QbdrvEug38h+6KT4SdeKm/3zp4zynLo=; b=r22VLE6jSnK44A
	Q5pQzHDYf//WYwXv74LvpWfpCU62OrmVcNadGxQ7DOvmJhfqVtF9AGBC6NUd2HGYYbTuwZlGCFyvK
	DlEziKXB/wChkNZwltYXwVKNsQyD3vNlnvU+38KT8p7gapjkPvxjD+oNvUK2ou8w7/GdKaA2o5qjh
	FN/I6N09rM3rlm6zFfiGmjZlGfjP9TRDiDJQy9iZ4sOADibtV1QnWAppXPVtO4laZY6KWf4vieswi
	kEUV0dLK8a0iDR7efiQ0dKVi1iA4Ys8LUTef+glSi1mjQl2XL7fHJr0pSMKsSLLlSKylh7KgDOhP8
	HMmeuBIJPfYRGpF1LlYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStGR-00020f-AQ; Tue, 21 May 2019 01:08:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStGM-00020H-EF
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 01:08:19 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6BCB1C049D67;
 Tue, 21 May 2019 01:08:17 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CDE372FC60;
 Tue, 21 May 2019 01:08:12 +0000 (UTC)
Date: Tue, 21 May 2019 09:08:08 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-pci: fix single segment optimization
Message-ID: <20190521010806.GB14268@ming.t460p>
References: <20190517225035.25008-1-ming.lei@redhat.com>
 <20190520111601.GC5137@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520111601.GC5137@lst.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 21 May 2019 01:08:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_180818_497253_E87F9107 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 01:16:01PM +0200, Christoph Hellwig wrote:
> Given that the code only showed up in 5.2 I'd rather try to fix the
> block layer issue, lets see what Jens says.  But if not I defintively
> want the comment from my earlier patch, and to me the
> !req->bio->bi_next && req->bio->bi_vcnt == 1 check also seems slighly

The check on 'req->bio->bi_vcnt == 1' should really be avoided, and it
isn't needed too.

thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
