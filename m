Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2B218E4E
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 18:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ayp7xIQwPtKQ4ZX939Di7T9PlV4m2xRDyyXuOJ3TA0=; b=AFEZyFRXL/xPNv
	k9owpE/f5Yv6sIYhukh1eK3YU7PUY0uCXIhUYQ/cpUalkbYZvpNHstaFnLb0p2Op5rA/yCYKzQeJb
	f1kisi/d9rhZ+9nxtlFScAO3qenJJjFrgEK9TNbWlObWexi/e5ti5FBISIvqA+4Ym72IvY8UhX21e
	hhGc/L21LxRaxPq0hk3QZw1QAH5ILjjlVBuI1nSLYikQlGfQhqfJDL2uqsXrDZLNYG5SC9TR+LJqf
	gIpmC0qj1NiK4RIxtqoOD3szXWsl+CiMeuDTxV5I6isj3L6e1E6GhDIFhchtqc+wjQSdIhLBNwW5S
	jrE+NYeNfRXkWcpxd0VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOm8N-0002yr-LP; Thu, 09 May 2019 16:43:03 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOm8I-0002yQ-PM
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 16:42:59 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 09:42:57 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 09 May 2019 09:42:56 -0700
Date: Thu, 9 May 2019 10:37:27 -0600
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-cli: cleanup comments for telemetry log structure
Message-ID: <20190509163726.GA9675@localhost.localdomain>
References: <1557416597-21777-1-git-send-email-akinobu.mita@gmail.com>
 <SN6PR04MB4527F16CCAA2E44830391E3A86330@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB4527F16CCAA2E44830391E3A86330@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_094258_870430_834C6D4C 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 04:38:03PM +0000, Chaitanya Kulkarni wrote:
> Looks good to me.
> Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> 
> On 05/09/2019 08:43 AM, Akinobu Mita wrote:
> > This removes three comments for struct nvme_telemetry_log_page_hdr.
> >
> > - The comment on top of the definision doesn't describe more than the
> >    struct name itself.
> >
> > - The rsvd1 field has already been verified.
> >
> > - The structures with trailing zero size array are commonly used in
> >    nvme-cli, so we don't need special comment for telemetry_dataarea[0].

Applied, thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
