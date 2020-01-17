Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED66140157
	for <lists+linux-nvme@lfdr.de>; Fri, 17 Jan 2020 02:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0dddFkq652X8hczY3XQnO2lwvW2K8/UFwNuBsMoc3OI=; b=YDfgZo9RB2kW5BHyu1dwVOjtx
	xTRMd1HZZuEn/14CklmKcoAUG8feoAcVVCh7Ub40bPs17bxAYz8RFZST5QF7Rg9pZ37AStmeZlP+R
	wGorSAtl7wfg85UlRNzbk+524qzXB8d86AIR/r5zXmskod14XWOryAkLQUbbxMlBpAgJ6PylkN+es
	vSKZ83LBeAc5eTbLeXOHMgYMZaitpFRJnssMRXlfPBYk5QqCawUpg+FbcHFjHYdIWXUcX0TFTUNVl
	npO92Uu58h9RJlDl8RDbiXE38R8f1ehLy8dzHCsY72L37TBkzDTuQxxnbehuvhebdedIT0LPGn9So
	ijfwywk3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isGCT-0000AE-09; Fri, 17 Jan 2020 01:13:25 +0000
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isGCN-00009i-3z
 for linux-nvme@lists.infradead.org; Fri, 17 Jan 2020 01:13:22 +0000
Received: by mail-wm1-f46.google.com with SMTP id u2so5855159wmc.3
 for <linux-nvme@lists.infradead.org>; Thu, 16 Jan 2020 17:13:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7Uj7SwLQPVsveQQNfvPv8y0OGq9xTb7IWwg9YoF/ReM=;
 b=nHri1Tle6wEjt2YVPuY+OeqNHmKvhZUxE+ZM4vn2vxxGa+gGXS3QUEIbO4mtlgaKNu
 orS3wzlHKXUwXHZcKcrAvnfzIJc54xOiP2n6O/EBTO3gLy05iL3IGi/jonQ2oqKLD68O
 mK1p/QK9OGbw81GcEWF3vFBXNHeb+Gil5+Y7h3bruYmJvkBrnvKSgbMlCTndGA4XXw/N
 87ybomDVKBkK01GClf0TS1u0tfEuQvCjaUxkchh8i6Vj6fAOJCtmcr0D3vc9d+Ir9PRg
 ob1IVxeFUfN5o9/c2t1kf9Kh8jh33QvaU/ICT+SCuCm62KPon5U43wX5AcXZMjdbz+dG
 MNEw==
X-Gm-Message-State: APjAAAUm3U41BNn0IUtfG2hERpKBqEDZsAv/E1igl/QqTf5qjvuyIr0x
 dyKyfoyxFGZgBZGknE3NaW6NukRZ
X-Google-Smtp-Source: APXvYqy+3wy652RixrOGq1s5UNrztUPqUR4kFMB909opZXte0R5UnVjeiyhtBMQVyCRbQEQoWPP3SQ==
X-Received: by 2002:a1c:740b:: with SMTP id p11mr1893587wmc.78.1579223596660; 
 Thu, 16 Jan 2020 17:13:16 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id o129sm7203722wmb.1.2020.01.16.17.13.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Jan 2020 17:13:15 -0800 (PST)
Subject: Re: [PATCH 0/2] nvme-tcp: Set SO_PRIORITY for all sockets
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <BYAPR11MB2712E7D933721CA54EB18365E5360@BYAPR11MB2712.namprd11.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <675e24bb-8a91-6612-887a-2a0a38a57cda@grimberg.me>
Date: Thu, 16 Jan 2020 17:13:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB2712E7D933721CA54EB18365E5360@BYAPR11MB2712.namprd11.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_171319_161338_433DAC6E 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Mark,

> Host and target patch series to allow setting socket priority.
> Enables ability to associate all sockets related to NVMf TCP
> traffic to a priority group that will perform optimized
> network processing for this traffic class. Maintain initial
> default priority of zero, only setting socket priority when
> module option set to non-zero value, when optimized
> network processing conditions exist.
> 
> Basic performance measurements for io_uring, pvsync2, and libaio
> show benefit of improved lower latency performance when enhanced
> processing support is triggered via socket priority.
> 
> The data gathered using infradead branch nvme-5.5-rc.  Data shows
> Existing OS baseline performance without patch applied to both host
> and target,  performance when patch applied and priority value set but
> no support for enhanced traffic processing exists,  and finally when
> patch applied and some form of advanced traffic processing exists
> such as symmetric queueing.
> 
> The patches were defined to allow for any priority value to be used
> to support future flexibility to specify any unique value for optional
> advanced network processing.  If having this flexibility is reviewed as
> not beneficial to the community at this time, then the desired option
> would be to set the default module priority to non-zero, to always
> allow for advanced network traffic processing if possible.  But data
> does show a slight performance dip when the priority is set when
> there is no advanced network support available.

I think we can keep the special mode in a modparam for the time being,
especially given that other configuration is needed as well. The fact
that there is a small delta if adq is not enabled but so_priority is
set is acceptable, and if this option is used we can assume the user
relies on adq anyhow.

> All data gathered using 48 I/O queues and 48 poll queues established
> Between host and target.

I'm assuming that overall IOPs/throughput on a multithreaded workload
also improved (when not capped by the single Optane device).

>  Host busy_poll value set at 5000.  Target
> busy_read value set at 60000.

This shouldn't make a difference for nvme-tcp which overrides busy
polling for its own blk_poll hook.

>  Single Optane device used.
> 
> IO_URING:
> Baseline:  No patches applied
> QueueDepth/Batch    IOPS(K)    Avg. Latency(usec)    99.99(usec)
> 1/1    24.2    40.90    70.14
> 32/8  194    156.88   441
> 
> Patch added, priority=1, But enhanced processing not available:
> 1/1    22     43.16    77.31
> 32/8  222     137.89    277
> 
> Patch added, priority=1, enhanced NIC processing added
> 1/1    30.9    32.01    59.64
> 32/8   259     119.26    174
> 
> PVSYNC2:
> Baseline:  No patches applied
> 1/1    24.3    40.85    80.38
> 32/8   24.3    40.84   73.21
> 
> Patch added, priority=1:
> 1/1    23.1    42.87    79.36
> 32/8   23.1    43     79.36
> 
> Patch added, priority=1, enhanced NIC processing added
> 1/1    31.3     31.69    62.20
> 32/8   31.3    31.63   62.20

No need to report 32/8 for pvsync2

> 
> LIBAIO:
> Baseline:  No patches applied
> 1/1    26.2    37.67    77.31
> 32/8   139    220.10   807
> 
> Patch added, priority=1:
> 1/1    24.6    40    78.33
> 32/8   138    220.91   791
> 
> Patch added, priority=1, enhanced NIC processing added
> 1/1    28     34.03    69.12
> 32/8   278    90.77    139

Given how trivial the patch set is with the obvious improvement,
I say we should take it as is.

For the series:
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
