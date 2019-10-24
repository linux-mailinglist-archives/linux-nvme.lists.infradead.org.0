Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2226BE3F7B
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 00:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8t0cjMW1Y8853o0arLfaIlvVW5LV1KVzYVRmyEgLSoc=; b=POaQJWSCwUcucy
	2wHjf/iLjOPeb9QgJzlHBQLPVxiy9+WvE9+OrIQlxuum5iRbhs/k5lSX1verS/fS61uAeceAQ1NAm
	ty3Re0kxgAOIg6I4EYXFQaYj2MrJa6tvz5JVlqMIdD6wYn8DS+AlTfqqjCce75eZZcRWpwY94VAr8
	LngXriv1M5skzPYYJPnVJwJhs5tFeaGzHxm/1F/0APyUnzdPRtCX6ZUrlW1CBrJBdtW8GbGsWJcAF
	O8J66RT09wB9HuRdAUnH920+M8Mbk308Iv6DpW9udRAOp+VPMxFszUZSv03MM64RRZPIAjzwhdEt/
	gqo4sU438iw3pnxM1rlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNln4-000712-6s; Thu, 24 Oct 2019 22:41:10 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlmz-00070J-GK
 for linux-nvme@lists.infradead.org; Thu, 24 Oct 2019 22:41:06 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1iNlmv-0002nv-UM; Thu, 24 Oct 2019 16:41:02 -0600
To: Keith Busch <kbusch@kernel.org>
References: <20191023163545.4193-1-logang@deltatee.com>
 <20191023163545.4193-4-logang@deltatee.com> <20191024011743.GC5190@lst.de>
 <382906f0-ce0b-282a-9665-8317b50fe374@deltatee.com>
 <20191024220119.GA25484@redsun51.ssa.fujisawa.hgst.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <d0ab4459-80c1-a722-ff75-269b0e61da19@deltatee.com>
Date: Thu, 24 Oct 2019 16:40:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024220119.GA25484@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: maxg@mellanox.com, sbates@raithlin.com,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaitanya.Kulkarni@wdc.com, sagi@grimberg.me, hch@lst.de, kbusch@kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/7] nvmet: Introduce common execute function for
 get_log_page and identify
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_154105_583925_82C7F929 
X-CRM114-Status: GOOD (  12.04  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-10-24 4:01 p.m., Keith Busch wrote:
> On Thu, Oct 24, 2019 at 11:18:20AM -0600, Logan Gunthorpe wrote:
>> On 2019-10-23 7:17 p.m., Christoph Hellwig wrote:
>>>
>>> First signoff needs to be the From line picked up by git.  I don't really
>>> care if you keep my attribution or not, but if you do it needs From
>>> line for me as the first theing in the mail body, and if not it
>>> should drop by signoff and just say based on a patch from me.
>>>
>>> Otherwise the series looks fine.
>>
>> Ok, understood. Do you want me to fix this up in a v2? Or can you fix it
>> up when you pick up the patches?
> 
> I'll adjust with the commit. Just let me know which way you'd like to go,
> whether attribute author to Christoph or use the "Based-on-a-patch-by:"
> option.

Attribute the author to Christoph. It was all pretty much verbatim from
the draft patch he sent anyway. I just split it up and tested it.

Thanks,

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
