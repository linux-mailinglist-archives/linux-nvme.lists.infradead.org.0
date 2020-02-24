Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB6416ACC7
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Feb 2020 18:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnxMdKhatLl5R1aQ7OuyR89oKe3L/s+efC4dbNtogQ0=; b=n8UZR6/X3pQB1R
	YSlVCJvd2G3+w+c2WiKvSHFSCtr+T1mX89z3cjn6x23I59uTq8ZNAltR0R/ArF53yrs721L44Vt6N
	6+IaDrX27ASC7edvDNiCJsWeuj1EVqyuopte0dMQNmcjQUaQ0wJvzVoTNb/vMhnbUzhqMnCIsJH4j
	IVI/0AMuyIp9HQtpAtwbaan3Oed8SmqYc6whRSN34Pc+uHYXf8SoTHIJoNuvqFMh5dvxg2hTFuo1S
	qVG8LU59WFaH4Z23nT3ywG15VZsy0LFVjy8Rj5AxVaul3tj3gUiwJEzzE7EGk2EJN/gw4kwJEc1op
	fLwLjyxb+dbJbClXmi3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HI7-0002Ni-SO; Mon, 24 Feb 2020 17:13:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HI3-0002ND-Qd
 for linux-nvme@lists.infradead.org; Mon, 24 Feb 2020 17:13:09 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BF3C668B20; Mon, 24 Feb 2020 18:13:04 +0100 (CET)
Date: Mon, 24 Feb 2020 18:13:04 +0100
From: Christoph Hellwig <hch@lst.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1] nvme-pci: Move enumeration by class to be last in
 the table
Message-ID: <20200224171304.GA7171@lst.de>
References: <20200224093823.17534-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224093823.17534-1-andriy.shevchenko@linux.intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_091308_065463_2AD0A860 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 11:38:23AM +0200, Andy Shevchenko wrote:
> It's unusual that we have enumeration by class in the middle of the table.
> It might potentially be problematic in the future if we add another entry
> after it.
> 
> So, move class matching entry to be the last in the ID table.
> 
> While here, group Apple devices together with an additional comment line.

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
