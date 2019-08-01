Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFF87D28F
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 03:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wD8snVFBHkRo/XP65s1eV8Ytw7bQJVV9qhL3nzx5UIA=; b=NzRN8Q9WHEY6cEnwcIxOOKIWD
	Jc3ZMtoUGEysVHcK/My2dyMYqXioR0+84ulJyU5OXCifDF2q0mPKBMJSpAjRteFqhJJKjtT/nEg3+
	f7J3Oa+mtWhbeL/CCnsk7ij+HqdpXCX3i1ugN9DBKTU37Rb4T0jzmdWZnjIedNTZ3xszohhyNCTJ5
	tkxx1PKnmTaCzNzMJNx5c11Pg2qcOpUaeLLSFEGPCZRDTn5XkpppJYKjGN9Xmxs2SEiDbVxDiSBme
	vm+b8pfJGlQ2tJlcjRUZZfZ9YYPpJWPyDe0q//VO6BHt9rqwL4zijAiIBWfPFf4sWEwE0HdVp0ld0
	Rtc5dcPWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszaX-00040S-W3; Thu, 01 Aug 2019 01:09:02 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszaS-000409-Hy
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 01:08:57 +0000
Received: by mail-pl1-f196.google.com with SMTP id m9so31145606pls.8
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 18:08:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ur+hi34Mm+Q/bt7pv3YlsVj7Z8H+87XWD6McEwATOd4=;
 b=SqEcAs7iX37hlB2Fm05+ZgM2Gys7lM+0oHM0k88OsPZdL3sxG6U8wtJ5XP5M1w6fma
 Oj+C9b+IOy0Ewimmy90YB7u6LoDXHWI7pbkxEEbLHkfWaLiNIsvHvPI8kIljfXtU/d/U
 QpoH6MrSTFlgwda0YGsHoOnCCoN0c1uWEE8Wu5kyPEavIhJJOGZGqR2cKAxySC2GZ/TZ
 QUbzz5R6pspCDSt7XbhEeramGBJW5l+7T379Aouf0GISF3G7ZEYhebI7ERvNY8gbwb8z
 ZHOOCpNLsOwQRCBXx2xjqSjrI7LQ1/nNm3o1UPeXF8JJREM8V0ZooZBIPe9sCYnjgEsN
 vS2g==
X-Gm-Message-State: APjAAAXq/fvkqUhu9Yb4zrUMR5h+3F1z1V1FjKI9BDojrxgSyE5YxrZs
 YKsb26vBW5g69c9yCrQsI4g=
X-Google-Smtp-Source: APXvYqzdZrN4A3cveudRjkgIZLIIlau7G/y4hMfN8HsVtMth++8hJVZjkzHo0sjB+h9mjAfXG18A2A==
X-Received: by 2002:a17:902:bd49:: with SMTP id
 b9mr28891821plx.343.1564621735283; 
 Wed, 31 Jul 2019 18:08:55 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id h1sm88090184pfg.55.2019.07.31.18.08.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:08:54 -0700 (PDT)
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
From: Sagi Grimberg <sagi@grimberg.me>
To: Alex Lyakas <alex@zadara.com>, Max Gurtovoy <maxg@mellanox.com>,
 linux-nvme@lists.infradead.org, Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, tomwu@mellanox.com
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
 <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
 <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
 <66ACE500178B47D6B39F23FE98D22363@alyakaslap>
 <b6443a7c-4be6-3dbc-0535-a8ded3261c50@mellanox.com>
 <8ab1fa5e-2d67-5128-93b5-2f32704869e4@grimberg.me>
 <28046c97-c271-dff4-5252-4b5668c7bfb7@grimberg.me>
 <B3E9005C4E4645628157970AE2A385C4@alyakaslap>
 <fbcd59ef-9c48-4e1a-4802-1cae33c5f671@grimberg.me>
Message-ID: <d7caa73f-b939-41f5-793a-c9b74880f246@grimberg.me>
Date: Wed, 31 Jul 2019 18:08:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fbcd59ef-9c48-4e1a-4802-1cae33c5f671@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_180856_597243_CD01A10F 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Hi Sagi,
>>
>> Which kernel this patch applies to?
> 
> its based on the nvme tree, but it should apply cleanly on upstream
> 5.2...

Alex, Max? did you retest this?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
