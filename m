Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7EBEE2A4
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 15:34:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pm7uEUxVGpb98GXACYX+hQvIE21CqusxlSLHvbHY7d0=; b=g9zG9rHLL4OfZH
	XDGCrc2f1VZ4odWXXbrpKrzEDYKkshuol1qF0qF2Y+I9bB/mD+HFpyBO6iPpK0WXSBEVbRx+gPQav
	1NCHbt/siQdyKepPN9QrYIJAjo0yKY0rw+FZif7CX3zow3nu+GOOexetdUiigwAvLsgJXAAmHcmij
	kSTB9uFWkdq4w74tm5wWkUNnuEi3RaqZ9JxUl9gv1qefE0tMMnefjo3Nk4XCqRXe2cyBHQS7rBy7V
	w+XYJRgTMFBZwj4Kjltw9lOsUYYfqFis4Bb9CwFxY7synxgI5PNNFNaQqwIgRnfBkE46O+x0F2amA
	xcE5wZCgr/UIntNFSmKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdRT-00037s-By; Mon, 04 Nov 2019 14:34:51 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdRN-00036v-9U
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 14:34:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 432D327E03F9;
 Mon,  4 Nov 2019 15:34:41 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id iCtUtBHQ30vp; Mon,  4 Nov 2019 15:34:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D6B3727E08CF;
 Mon,  4 Nov 2019 15:34:40 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D6B3727E08CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1572878080;
 bh=pD0MUKyotGulN1CLftCO1i1SN0De2+Xqp9tO+mZ1yzE=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=CWih9SwwV6LHORRDXXXP6pPflux0yx0cLlJxR+BLo4soFLw85sob1AqWHQru3BrNE
 PIKXbCb7MvKlSYyzWdZ72nZUOQ3SDPgc32sOiru96j0hrO8m2a4bwiAN4rQZ6dn8JI
 rXKUoLRWDuqUsx+/Vbc2+VKHjuIwLBUGgSmW/cTQ=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DU5pN41YXiic; Mon,  4 Nov 2019 15:34:40 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A0FD827E0868;
 Mon,  4 Nov 2019 15:34:40 +0100 (CET)
Date: Mon, 4 Nov 2019 15:34:40 +0100 (CET)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <1977598237.90293761.1572878080625.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20191031133921.GA4763@lst.de>
References: <20191031050338.12700-1-csm10495@gmail.com>
 <20191031133921.GA4763@lst.de>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvme: change nvme_passthru_cmd64's result field.
Thread-Index: a1J64yF1pUDUpDcN+i9ToaOYAPxGqg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_063445_518341_FDA510FA 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Charles Machalow <csm10495@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



----- On 31 Oct, 2019, at 14:39, Christoph Hellwig hch@lst.de wrote:

> On Wed, Oct 30, 2019 at 10:03:38PM -0700, Charles Machalow wrote:
>> Changing nvme_passthru_cmd64's result field to be backwards compatible
>> with the nvme_passthru_cmd/nvme_admin_cmd struct in terms of the result
>> field. With this change the first 32 bits of result in either case
>> point to CQE DW0. This allows userspace tools to use the new structure
>> when using the old ADMIN/IO_CMD ioctls or new ADMIN/IO_CMD64 ioctls.
> 
> All that casting is a pretty bad idea.  please just add an explicit
> reserved field before the result, and check that it always is zero
> in the ioctl handler.

That would change the size of a structure in UAPI, won't it? 
I wanted to avoid it when adding the *64 ioctls and that's why
I added separate ones instead of extending the ones that exist.

Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
