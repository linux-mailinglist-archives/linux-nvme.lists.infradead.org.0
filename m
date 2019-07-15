Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3641C69F6E
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 01:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GiWeTfYrIDj/efCNAiqCfdYt35dfdtjAhs8bpIOLHg=; b=Lszo8GbrG2fi+w
	b1l9SffCyxO7zXsSfv7/wiSFnqAlwbRdaLH4t99b4D20OQyE1Lu8S81D8EAKeccJBlbXM5YmXSbeR
	g78YLZraGQiyCNxUsGrIjGOJceHuniQaJQ7SlXvarLfqozirlWHLo8D1KXmtJpc/6OQ8E1qdlfmFu
	cbL4bcr7W6B5fOSb0wpj2yjrZLrp9E308AIj2CPPuJNxAzVEKDBEHutwhSnV/Fjpsx+/MyomklUXm
	YIaEm9ziqNVDtOIWJ2GA/SXGPpoJ/X+YKBR68ua182bXw2l0L6Y61VwQXQXCzPOWVh4Kk3rXYe5gI
	IdxWQuPtZ52LmXCw+zHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnADW-0005KG-LY; Mon, 15 Jul 2019 23:17:10 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnADH-0005Jc-LO
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 23:16:57 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hnADA-0007pe-Cs; Mon, 15 Jul 2019 17:16:49 -0600
To: Omar Sandoval <osandov@osandov.com>
References: <20190712235742.22646-1-logang@deltatee.com>
 <20190715231411.GB5449@vader>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <91813de2-22cb-f191-4bae-0f1306422c07@deltatee.com>
Date: Mon, 15 Jul 2019 17:16:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715231411.GB5449@vader>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, jthumshirn@suse.de, tytso@mit.edu,
 mmoese@suse.de, chaitanya.kulkarni@wdc.com, osandov@fb.com,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 osandov@osandov.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH blktests 00/12] Fix nvme block test issues
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_161656_034773_A326E699 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Johannes Thumshirn <jthumshirn@suse.de>,
 Omar Sandoval <osandov@fb.com>, Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-15 5:14 p.m., Omar Sandoval wrote:
> 
> Thanks for cleaning this up! I replied with one nitpick, and besides
> that and comments from the other reviewers, I'm happy with it overall
> (assuming it passes shellcheck).

Thanks, yes my sed skills are obviously not as good as yours. I'll fix
that nit up for v2 which I'll send in a couple days.

I have run "make check" on the series and it does pass.

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
