Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16637DDE5
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 16:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xk34E+M1H7JTGGu/MaIJVWQAa8pfN1wRSeczHIY/YxQ=; b=qE16D+Tc3dZAXHoRNTtL6h0/j
	afKQ2Rji8P7WdHe4RtWfwvb3iQ0lLgOZHoyqAUxofRsAt0492CbtDsu9Rp2DeLabk+ro5xHPzr+o2
	28UKlcfUAOqNR44bHZ67LMFAAIaeJW1kQtnorJBkN3YVlv/tAOzixWiXrYHVllW1HPblIQUwJJ1vc
	WVQTHVAFSdLomhluG0iX20yJ8bSei2H4D0wSS61kc1BfDXAjv3Yh136KaATVR857mWM/ju0UfmhQc
	6jEfT6e+AHdwodloSMuN7nHCX3385nJBEglnTabONtfhlcaT2Zxfn03QW0JX03GYpyFTPqLH34N5E
	ymlqCLBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htC4P-0002vx-MU; Thu, 01 Aug 2019 14:28:41 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htC4F-0002vJ-H1
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 14:28:32 +0000
Received: by mail-pg1-f196.google.com with SMTP id r22so6708752pgk.10
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 07:28:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3+pyBVpWrGWFwo6CRFg6HFI3k917P3uucTxDT1CY470=;
 b=S6LR1N9Y505QUZP9wUNaht7/EycIf3kM2zg1oWPYhAW1chRTjmz06nSRUBmFT4sNo0
 xlB3wJl1mugo3ZTDaxIVeT2zP1nkDfYUvvr6VnAblnUkT67ZrTZMZOg7NvbU31OyTLh7
 F4oP7YvhSgDAKUFC2KwtXVE7ISesNL1RUZRxhyBA/EVhSNMbV6qc9Amgtz/cPW68BN+E
 hHiVU6uDmwCWaurFMhQPcf6mOnRNAieAa7azE6yweG8tgpkI5xg3DZdl7bvCdG8Fxr5K
 yGBgWlVeDNcvwuFlds/qQX7toidanPXu/TyEHXcazT//jUHXWmGUYLLLP7sMGDmCXqcm
 yeeA==
X-Gm-Message-State: APjAAAUCYH2wdSms6As23HvCWS0PLgtVnLAcPZBikfPDLD6QASeDHemJ
 NOUeRUaig3l9MhOnDy9KkZ7AfTQ6
X-Google-Smtp-Source: APXvYqzioTwzejHNkwFExVF/K0FB6CyilQfkFintItvAcOz9DFpqR6FzepR6NdWlQbjAlKMHrkbxDg==
X-Received: by 2002:a17:90a:1785:: with SMTP id
 q5mr9005763pja.106.1564669709983; 
 Thu, 01 Aug 2019 07:28:29 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id 97sm9803018pjz.12.2019.08.01.07.28.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 07:28:29 -0700 (PDT)
Subject: Re: [PATCH V2 0/5] blk-mq: wait until completed req's complete fn is
 run
To: Jens Axboe <axboe@kernel.dk>, Ming Lei <ming.lei@redhat.com>
References: <20190724034843.10879-1-ming.lei@redhat.com>
 <20190730004525.GB28708@ming.t460p>
 <7eeb2e89-a056-456a-8be3-6edbda83b7bc@grimberg.me>
 <944c6735-f03e-c055-33d8-fe7f9a760b8a@kernel.dk>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4788e1e5-6874-c510-5fa9-f07c98ec42e5@grimberg.me>
Date: Thu, 1 Aug 2019 07:28:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <944c6735-f03e-c055-33d8-fe7f9a760b8a@kernel.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072831_558058_6919860A 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Hello Jens, Chritoph and Guys,
>>>
>>> Ping on this fix.
>>
>> Given that this is nvme related, we could feed
>> it to jens from the nvme tree.
>> Applying to nvme-5.4 tree for now, if Jens picks
>> it up, we'll drop it.
> 
> It's on my top of list to review, I'd like to take it through
> the block tree though. I think that makes the most sense.

No problem at all. removing it from the nvme tree.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
