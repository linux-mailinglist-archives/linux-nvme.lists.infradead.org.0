Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696081EA671
	for <lists+linux-nvme@lfdr.de>; Mon,  1 Jun 2020 17:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQa9nPNumVAj//3u8uCI4mkSSqgBQOhf4034tLDxw1U=; b=fjdNmxFRCZT/Jv
	53TiG77f0zjJvCoFGkW7aD5UklNfpm/RvjnbOW22+ahbCyDNRdCToQMMRmWuWN92+J8GZaNS8PNYo
	ZXWOO2EswfaGO6+aJ2Bf35vX6FikFufiNavUMyfOFigpjMx7sX8ZqWUa52zZzUlOPdALnqaU/d1xH
	AtL3rQlWBI+SrvVVZVEFro8VLIqa27hkumOY88XOh4NuXQa3OGCKIhVsRT1KbO81LmxKpcuYihZ2a
	ctNKNz+IAOFCw3hkQFx/fln0X5YRw443DcZTnubWi+8zBxR6fQ6OKZtSkS+SZ+rOuxSFue4eS3Taf
	fB55Y2pdYmQyD8wcS/oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflxu-0003iQ-BS; Mon, 01 Jun 2020 15:03:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfg3b-0000nY-56
 for linux-nvme@lists.infradead.org; Mon, 01 Jun 2020 08:44:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0D94206E2;
 Mon,  1 Jun 2020 08:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591001068;
 bh=++2cB/ePJhne1YRp0fru1zBYoji5d1nprT5N9O4udpk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wVfow37nJUctQuczEjtuvdKVbO338MPrWmtxn6qzZZHMLNELwOQlIvzJoFUuF/1kq
 q5DWi1Wf0naUXbCdA1uSgSP2CWJRK7dS8k1Y+Djaw8xRkHX+tVonEUHstDVdezlly+
 CKUb/UU3oTLuSzgUFnUcgt1pHUYemwJpSNjNMHJk=
Date: Mon, 1 Jun 2020 10:44:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tao pilgrim <pilgrimtao@gmail.com>
Subject: Re: [PATCH v2] blkdev: Replace blksize_bits() with ilog2()
Message-ID: <20200601084426.GB1667318@kroah.com>
References: <20200529141100.37519-1-pilgrimtao@gmail.com>
 <c8412d98-0328-0976-e5f9-5beddc148a35@kernel.dk>
 <CAAWJmAZOQQQeNiTr48OSRRdO2pG+q4c=6gjT55CkWC5FN=HXmA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAWJmAZOQQQeNiTr48OSRRdO2pG+q4c=6gjT55CkWC5FN=HXmA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_014431_214856_0068BCE0 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Mailman-Approved-At: Mon, 01 Jun 2020 08:02:54 -0700
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
Cc: hoeppner@linux.ibm.com, heiko.carstens@de.ibm.com,
 linux-nvme@lists.infradead.org, dhowells@redhat.com, clm@fb.com,
 deepa.kernel@gmail.com, houtao1@huawei.com, hch@lst.de,
 linux-s390@vger.kernel.org, bvanassche@acm.org, darrick.wong@oracle.com,
 Mark Fasheh <mark@fasheh.com>, satyat@google.com, hch@infradead.org,
 borntraeger@de.ibm.com, gor@linux.ibm.com, ajay.joshi@wdc.com,
 chaitanya.kulkarni@wdc.com, chao@kernel.org,
 Josef Bacik <josef@toxicpanda.com>, ming.lei@redhat.com,
 viro@zeniv.linux.org.uk, Muchun Song <songmuchun@bytedance.com>,
 dsterba@suse.com, jaegeuk@kernel.org, jlbec@evilplan.org, sagi@grimberg.me,
 Jens Axboe <axboe@kernel.dk>, balbi@kernel.org, damien.lemoal@wdc.com,
 martin.petersen@oracle.com, joseph.qi@linux.alibaba.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, linux-fsdevel@vger.kernel.org,
 asml.silence@gmail.com, linux-btrfs@vger.kernel.org, sth@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 03:22:01PM +0800, Tao pilgrim wrote:
> On Fri, May 29, 2020 at 10:13 PM Jens Axboe <axboe@kernel.dk> wrote:
> >
> > On 5/29/20 8:11 AM, Kaitao Cheng wrote:
> > > There is a function named ilog2() exist which can replace blksize.
> > > The generated code will be shorter and more efficient on some
> > > architecture, such as arm64. And ilog2() can be optimized according
> > > to different architecture.
> >
> > When you posted this last time, I said:
> >
> > "I like the simplification, but do you have any results to back up
> >  that claim? Is the generated code shorter? Runs faster?"
> >
> 
> Hi  Jens Axboe:
> 
> I did a test on ARM64.
> unsigned int ckt_blksize(int size)
> {
>    return blksize_bits(size);
> }
> unsigned int ckt_ilog2(int size)
> {
>     return ilog2(size);
> }
> 
> When I compiled it into assembly code, I got the following result,
> 
> 0000000000000088 <ckt_blksize>:
>       88: 2a0003e8 mov w8, w0
>       8c: 321d03e0 orr w0, wzr, #0x8
>       90: 11000400 add w0, w0, #0x1
>       94: 7108051f cmp w8, #0x201
>       98: 53017d08 lsr w8, w8, #1
>       9c: 54ffffa8 b.hi 90 <ckt_blksize+0x8>
>       a0: d65f03c0 ret
>       a4: d503201f nop
> 
> 00000000000000a8 <ckt_ilog2>:
>       a8: 320013e8 orr w8, wzr, #0x1f
>       ac: 5ac01009 clz w9, w0
>       b0: 4b090108 sub w8, w8, w9
>       b4: 7100001f cmp w0, #0x0
>       b8: 5a9f1100 csinv w0, w8, wzr, ne
>       bc: d65f03c0 ret
> 
> The generated code of ilog2  is shorter , and  runs faster

But does this code path actually show up anywhere that is actually
measurable as mattering?

If so, please show that benchmark results.

thanks,

greg k-h

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
