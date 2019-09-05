Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70867AADE3
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 23:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gqDdesp46vJduUalm31NNXsGNorTu9/Vo+568H79jA0=; b=oUtOeW+UKkTDdYBi3Hw5zBALR
	9eospP9szZEMEwyAcxzf6yv7+FSI6mCJExetpJxbDT6zyQZDg/eBb6eythtKKnsJwOHWFSbpekV5C
	P7LgtZNb895iHshPBLPGZ2xSlm52XqWCTmywBcyq1FIu9yXn2zOXM/jA5Cx7R5Hlno7yazbFaGRby
	Nxp00IYJIvRBguvYVk/90ENhvlTSM9hZXOVuecJOY2pXb/JZcGbPJBe5h7YJZ9fDBSB9ug2xe4QDF
	Zwc05zgfjEphf1msTOOELsiAFs7/6B0hy77yKPD6/x3UdPnDGcTpbQNxy/KQ/la3yrUtd2zrse8vH
	ZyD4T/asw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5zR3-0002C5-A0; Thu, 05 Sep 2019 21:36:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5zQx-0002Bg-KC
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 21:36:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so2181815pgj.7
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 14:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=KaGed34z7gBVg5THuh38t/cxJDxpND4ade6H47mlGx8=;
 b=gIqPaPDbW5oWowZaIX272zLtN43m2XC5wFQIpxShGfKh4GdQyq7fjd3RDm/XBgAvzN
 YWtEkeppeUTqoK8hQzZyR8tet+8t+eeHjjNIh9imgBkJveINFz98WRpjOU+zzl5ut0Mf
 fPU2Aw06WMUbzAIk6mRjtC7xOncSS/DqTVwo4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=KaGed34z7gBVg5THuh38t/cxJDxpND4ade6H47mlGx8=;
 b=O7PG+7AdziUCkitF6mVZeFCVy3qATEbMT+3+eG4xRNTLFH2x4QNO/7822mrqL7rE13
 HP0W7su0AzWPYghwmf6PGZfnK/qYiO+P04PEJ0wv9IXjuuTwFqfvYokh/xgqbDM6wdlQ
 Fh7dySrAoB8wIqb+6+vG6ZBKHx+llkUwnkxRO4OW6TVVaLa2NC/VD6rmcqgJJEFjWFOc
 xMqFHzxcFmpoGjRW9l49plSBITEFkc1jFvfpcdGdO2q9x+WChM2jwYoC+9O+aB1tWj/s
 QkyNlLxAITbTKSnG6SMgQ1VhcrkkNtWYrCWMGsBNmOhfK//2Ts4zN2TOflvlQtDmWSWl
 UjeQ==
X-Gm-Message-State: APjAAAXZlJjEtQN6U0JlafsQUHs8xIenjOiOyTHQPw2riuOEW43Z0IWv
 jATUcEPKYbrwCbTcz1KVusRYCcVjeAqa+lcKIM18Ck7xyI/JwtLUbXmLGbB5ZRUhFibwoAt9IuB
 sE8qlDdz9SDlOwGJDF/Nt3EUHyFMQbBmD7EmgHIIip14EQehngDhXgMJnxrUvyzIje1/Pa6Z64f
 ffZBMtvA==
X-Google-Smtp-Source: APXvYqzZY+hP2f7vhyfYcGOwib+bHFkslmSCx8bgQkwQw58rz6vKDV0IwEZme8iDgC3mCqrzqwhoZA==
X-Received: by 2002:a63:58c:: with SMTP id 134mr5360688pgf.106.1567719410316; 
 Thu, 05 Sep 2019 14:36:50 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u4sm1098986pfh.55.2019.09.05.14.36.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 14:36:49 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvme: Restart request timers in resetting state
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>
References: <20190905142607.24897-1-kbusch@kernel.org>
 <65aa0709-c8a7-2988-864a-4bda0a4c3ce8@grimberg.me>
 <20190905202557.GA25467@localhost.localdomain>
 <d5d5efd7-cbab-4e07-3e20-69b3c3ae1de8@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <2b4c9e21-c104-0824-2514-b4043a75c1ee@broadcom.com>
Date: Thu, 5 Sep 2019 14:36:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d5d5efd7-cbab-4e07-3e20-69b3c3ae1de8@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_143651_671035_68429BC8 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 9/5/2019 1:39 PM, Sagi Grimberg wrote:
>
>> The point of this patch is to not do anything in a
>> reset state because whatever set the reset state is responsible for
>> clearing any commands prior to exiting that state.
>
> OK, we might need a bit more to make this correct in the fabrics
> drivers.

We certainly should be meeting this bar:

rdma/tcp uses blk_mq_tagset_busy_iter() with nvme_cancel_request, which 
is immediately completion of anything outstanding.

FC uses blk_mq_tagset_busy_iter() with an abort path then waits for the 
io aborts.

These coupled with the fabrics check-ready logic to not accept new io 
should mean we meet the bar.

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
