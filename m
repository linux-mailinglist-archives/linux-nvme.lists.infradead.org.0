Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5C3EFC2
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 06:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GncfM2yesnSnSGCeX3e3WK4puIJ/fGjULybrKotz46E=; b=iCQY2tm7vUu1BZh2CfKJ/f2cL
	T0oiIEeqFB5k0xlifY4jsNl66clSqb5zLTdmnAxKJXFGrBuZ968kkIQT2QJC75etiGWyJ7GYGA5zi
	Z6MaT/82KYQWHD5onyQlRQ3QPB6YaER5uEsEJYT0u/m+26n3ar+4tfeHBhYh7g5UpGcm1vs3aPrK/
	6/D+LcQqncqOJ1GmcFYTbVsm6dksO0PEIeVo6OuK0SeqQjeZy0/NwklFuscWtdyJAHyPK7nW0hgmr
	shetoKgPJ9XyZQBF8NIIES3qy7RkLWjavV6OfIeeblW9kKzyiYbI++2q6kJDtHYA3rltsPaYwBYmG
	RkMMIi/hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKeu-00088u-1G; Tue, 30 Apr 2019 04:46:24 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKek-000827-VM
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 04:46:18 +0000
Received: from localhost.localdomain (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id 39087300078B;
 Mon, 29 Apr 2019 21:46:14 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: add clarifying comments and fix some typos
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190429173533.10366-1-ednadols@linux.microsoft.com>
 <20190429173533.10366-3-ednadols@linux.microsoft.com>
 <ac3905e6-208b-a528-f1ff-189c2f8048f8@grimberg.me>
From: Edmund Nadolski <ednadols@linux.microsoft.com>
Message-ID: <6a984000-0b1c-d091-6d92-28fa44b9c475@linux.microsoft.com>
Date: Mon, 29 Apr 2019 21:46:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ac3905e6-208b-a528-f1ff-189c2f8048f8@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_214615_395817_6697A8F2 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 4/29/19 4:23 PM, Sagi Grimberg wrote:
> 
>> Add comment descriptions for struct fields per NVMe spec.
> 
> Lets split typos from this patch. Not sure that the comments are all
> that useful, as we usually have a spec/tp at hand...

They could be useful to save a lookup (or when a spec isn't handy). I had
also thought of doing the nvm_id_ctrl and  nvme_id_ns structs, but I'll hold
off as it seems folks see this as extraneous.

I will split out the typos out and re-send.

Thanks,
Ed


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
