Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061F8B54AD
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 19:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3fW+tO80ynivad+Mi/lLlnTdH1bjL1oUv4q6PA92rd0=; b=oj4AP3wQg2LKYexR82HP/4jz6
	eLlUZeLcJ8WI2F0B69R/twS1evwHO36igVPaKfmgLv9iJEkb4WopHysMhiqaJ1dmlX/Vo/7MCZ1bh
	5qFiK+z72rKdomwKOOiDqHQDgmRTBNBRz7rtwJna5hAHsm52ypzgoGXGatlCYWfFYjFy/+IGwCoHx
	y7Y1Mo5U5kMXy8IZyAdYWDQhYpGJ0CCnpAFKCGWoNE6TI5/HRRlpCQSfIwU8tEVUVZK1PFDd26twB
	MPVBTe+V1/KQgXgTjkeih1WPIF6Ww0cHwchUue6urLY3Pa3qaTW1ZgzIS23GLsHlSqtIdzt42NIdg
	p0jYCqDkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHhn-0008S8-JD; Tue, 17 Sep 2019 17:55:59 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHhe-0008Ro-5H
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 17:55:52 +0000
Received: by mail-pf1-f196.google.com with SMTP id i1so2592343pfa.6
 for <linux-nvme@lists.infradead.org>; Tue, 17 Sep 2019 10:55:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sue9gm5GYVlq6Ah5YSo2jiRk5h2ShuCRyL3tfYq+NeM=;
 b=N4AzXLFjyV8k2IG0P/4lXCpKlH+kUejb5kg7Vdjt4+GH9g965pkoYCfepB2xDxZBBq
 c/ys9iEedcCb2nXqRoRTnGuFDCeCweSlgWsO77AaCueJu4goedO+ng+5VHOXQYWWDZ6w
 hJZXPo4/JpBGQJ3CPqDSKTswPDvoKzI8LU5izFEWAhkSKyAnkbzcG2aHjWxkimQITvS6
 scq6+x5MyUle+Cm4miQ0ddkGPng6vtptiIlbpqWovjEzHugdhixPYe83vt0IjTmN7TM7
 eW1N37IDUD2V1bHu+onRgZijHU6mx91/2uqxcYvuBUuaLUIMqRNNqsYjLIquVrvvqEv5
 ys2Q==
X-Gm-Message-State: APjAAAVooE94FZCfqBqkqw7tfOllkIZJMZb0itiNSIqkynhYZV8c7Tk3
 +FETxCcg+QmXbxYJJaWDvOye42We
X-Google-Smtp-Source: APXvYqyGS6Y5SLvQDqMkDrZ3iuePpqXqKj/KePRN1bIGZYAWf1azCK7f71ZYLAopuIQtJD0RqdKorA==
X-Received: by 2002:a17:90a:ba90:: with SMTP id
 t16mr6392878pjr.104.1568742947599; 
 Tue, 17 Sep 2019 10:55:47 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id w69sm9499192pgd.91.2019.09.17.10.55.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Sep 2019 10:55:46 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
To: "Singh, Balbir" <sblbir@amazon.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sblbir@amzn.com" <sblbir@amzn.com>
References: <20190913233631.15352-1-sblbir@amzn.com>
 <7017c4c1-75a9-1e37-eb54-6126dfbb251b@acm.org>
 <25d9badc90a1eb951cb5103774e8360edaa8ec15.camel@amazon.com>
 <14becaec-2284-d680-b3b2-c38537c91521@acm.org>
 <7a90bbc89594dd884b055cec3dc5f3060f1b1e5c.camel@amazon.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <eeefce01-3d9d-ade1-50e1-79e3dca76fcc@acm.org>
Date: Tue, 17 Sep 2019 10:55:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7a90bbc89594dd884b055cec3dc5f3060f1b1e5c.camel@amazon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_105551_280282_65410052 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>, "axboe@fb.com" <axboe@fb.com>,
 "hch@lst.de" <hch@lst.de>, "sagi@grimberg.me" <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/16/19 1:40 PM, Singh, Balbir wrote:
> Is your concern largely with the comment or the patch?
> 
> Keith just recommend added
> 
>   /* Revalidate after unblocking dispatchers that may be holding bd_butex */
> 
> That sounds quite reasonable to me

Hi Balbir,

Keith's comment suggestion sounds great to me.

Another concern I have is that your patch depends on implementation 
details of the block layer. Calling revalidate_disk() after the DYING 
flag has been set means that requests will be allocated, started and 
completed after the DYING flag has been set. I think that works with the 
current implementation of the block layer because blk_queue_enter() does 
not check the DYING flag if percpu_ref_tryget_live() succeeds. If your 
patch gets accepted and if blk_queue_enter() would be modified such that 
the DYING flag is checked for every blk_queue_enter() call then that 
would break the NVMe driver.

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
