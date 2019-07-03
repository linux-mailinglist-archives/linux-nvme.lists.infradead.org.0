Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3325F5ECAE
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 21:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GghZf0r4pD9VjcnsYQl4Yp4CCf5+zbST82lAGnNLURM=; b=NmcEBEhXtm4ICn
	WSsOy+9QplVPckIPZZ0SyabfhHm6PT022fJE5TeM2pKWJiRrf3D4SkOIWz/a6FjYPDrCa4n/pQKuy
	RJ7f3uyH2a2yHoPg93Q6/Tda+CC3R0SUagb8dqNQ4uNDzr2YWePcJlJJVZTsU8LReZQNizYppytc5
	Iti/8NEcm2fWBkSVkm4N7chCBuOEbYsIwkf4x0lGPm3RB1aSQ5tDKzCXP5seP8Eelk6OyOILFESwc
	cI+/NBoyJ96RBtkb9NqJiMRm9T1ioyreZJyfCAAbiwzqgPPJHRd5mgxTKkNh0zjM1HjQUnkf/03zt
	OiIDCH5DSTzgZCfV0DOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikmt-0001UE-9l; Wed, 03 Jul 2019 19:19:27 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikmm-0001TU-MB
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 19:19:22 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hikme-0002O4-JB; Wed, 03 Jul 2019 13:19:13 -0600
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
References: <20190703170136.21515-1-logang@deltatee.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <081f5e37-19de-228c-6c37-a82b8fb29932@deltatee.com>
Date: Wed, 3 Jul 2019 13:19:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703170136.21515-1-logang@deltatee.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, sagi@grimberg.me, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH 0/2] Fix use-after-free bug when ports are removed
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_121921_047025_04B70401 
X-CRM114-Status: GOOD (  11.83  )
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-03 11:01 a.m., Logan Gunthorpe wrote:
> Hey,
> 
> NVME target ports can be removed while there are still active
> controllers. Largely this is fine, except some admin commands
> can access the req->port (for example, id-ctrl uses the port's
> inline date size as part of it's response). This was found
> while testing with KASAN.
> 
> Two patches follow which disconnect active controllers when the
> ports are removed for loop and rdma. I'm not sure if fc has the
> same issue and have no way to test this.

Oh, I also should have done a similar patch for tcp... Forgot about that
one. It looks fairly straight forward, though (unlike fc).

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
