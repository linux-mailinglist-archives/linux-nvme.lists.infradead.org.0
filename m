Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C7D2A1EB
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 02:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=da1wfQVX6kIQkL+Dgv5w8JmyS5WYLrcFODmqhEsVbW4=; b=oKkMCaccs9KlwN
	fWRaZEEV1MUZJdZ5A1NNOUrEMKk/EeAEWdGBk3FtM8rkUfZ1IH3baEDID4A7bh1/z341fVZfxA5cY
	V4c/oRDzKH0bY/f2SjPMSa3ZvNP8ENrvKsB+eZyuNGi7ZPf5dRRK12uxEjUPGVk5iH6HxOaa6o8N4
	r3IgKY5QklHOrsU99zLPG80qMGu22QeAPsEcjbICHhnhi0ucxK/9Bab01gjJnxDrxh/4IvaGnUnAW
	etYsZ/1dyUh62cJCIw6Czmtgc9QbR1mENKvj6hrEtAVK4kAF1qNlLaBKs1fzRY29PdvpruAAmUiHs
	vy1T/vS9U88tgGX1eVSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUK6R-00046u-E3; Fri, 24 May 2019 23:59:59 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUK6L-00046S-29
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 23:59:55 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4ONx1TC017589;
 Fri, 24 May 2019 23:59:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : cc : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=mYxaTaB4BfCfxzRuaJ3NuA5Kz4LPWPU+aIoam+b5CUo=;
 b=p5gaDl7gb886ZgRhCLD79+fT1q4JqhGzCBzrgiYQn8xn3AEDxQX1vfa22xQnKQXK+LAN
 OwSdZTJW80I9XA4yne1ROjx4FOUE8CnUYAhyWGR2V+lv+WV2AnX0b+OAoUSQRHKQOvj7
 vWm5wx+mcFGdKV3IzpMdYzIxgj43zr6ULA/AylmLYEvplT1oqbPYDurG7auVX3/WyoAG
 nBNJwSb3kdSeSmZ2mnIv2MCu6uwDUWlyKJTEIBphLHdrwzAxAOgnAS6zqYgeoulZE77z
 /FsfHxcqMTB9oL/rcXrlykKesBweFZtribiglKXI8dmeJE8ANu2ILOnfyfstkULXy3Ab Lg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2smsk5uqrg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 May 2019 23:59:00 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4ONw3Je172558;
 Fri, 24 May 2019 23:59:00 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2smshg4dcu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 May 2019 23:59:00 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4ONwvQ9023032;
 Fri, 24 May 2019 23:58:57 GMT
Received: from [10.191.9.152] (/10.191.9.152)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 May 2019 23:58:57 +0000
Subject: Re: [5.2-rc1 regression]: nvme vs. hibernation
To: Jiri Kosina <jikos@kernel.org>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
 <20190524154429.GE15192@localhost.localdomain>
 <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
From: Dongli Zhang <dongli.zhang@oracle.com>
Message-ID: <92a15981-dfdc-0ac9-72ee-920555a3c1a4@oracle.com>
Date: Sat, 25 May 2019 07:58:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9267
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905240163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9267
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905240163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_165953_238998_410B3C91 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Jiri,

Looks this has been discussed in the past.

http://lists.infradead.org/pipermail/linux-nvme/2019-April/023234.html

I created a fix for a case but not good enough.

http://lists.infradead.org/pipermail/linux-nvme/2019-April/023277.html

Perhaps people would have better solution.

Dongli Zhang

On 05/25/2019 06:27 AM, Jiri Kosina wrote:
> On Fri, 24 May 2019, Keith Busch wrote:
> 
>>> Something is broken in Linus' tree (4dde821e429) with respec to 
>>> hibernation on my thinkpad x270, and it seems to be nvme related.
>>>
>>> I reliably see the warning below during hibernation, and then sometimes 
>>> resume sort of works but the machine misbehaves here and there (seems like 
>>> lost IRQs), sometimes it never comes back from the hibernated state.
>>>
>>> I will not have too much have time to look into this over weekend, so I am 
>>> sending this out as-is in case anyone has immediate idea. Otherwise I'll 
>>> bisect it on monday (I don't even know at the moment what exactly was the 
>>> last version that worked reliably, I'll have to figure that out as well 
>>> later).
>>
>> I believe the warning call trace was introduced when we converted nvme to
>> lock-less completions. On device shutdown, we'll check queues for any
>> pending completions, and we temporarily disable the interrupts to make
>> sure that queues interrupt handler can't run concurrently.
> 
> Yeah, the completion changes were the primary reason why I brought this up 
> with all of you guys in CC.
> 
>> On hibernation, most CPUs are offline, and the interrupt re-enabling
>> is hitting this warning that says the IRQ is not associated with any
>> online CPUs.
>>
>> I'm sure we can find a way to fix this warning, but I'm not sure that
>> explains the rest of the symptoms you're describing though.
> 
> It seems to be more or less reliable enough for bisect. I'll try that on 
> monday and will let you know.
> 
> Thanks,
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
