Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8B6292C1
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 10:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2LHo25zxz9+IsxDQZOrFuq104Z2pggauVbUVRXbH2oI=; b=XaPgwVDQZG6zJ60dxojy53Bz0
	S9VCKTREoTnGCQ2lIZq/+HXN4K0Lrn5B94jxHcX1FbOwMP7iT8Cm22FoRmxHGxMUX58E8dOi3nIsl
	nCo+U+fK8ZYQZXJZ15ecTAQw8eMPYHifySlSmpxOi2kCcL6FpXzJ+IxnXU8EX+inGdL9YLDjwW/RA
	nOMC8nkxou2HMmBcrlW/3RBP87GIJ8vNatNB5Vc7yJkwMmZeLR+1zReoFa6bHgMSUD0PwHWAZK348
	kIRKD+xWXOEroLyGtuJr+vIeWdFgo/FEawjhvu1eTsnl+KxSzA2cwCL0i1o/mgwVS1wQt8/eGYSLj
	L4p5hIbVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5Ml-0003pn-SG; Fri, 24 May 2019 08:15:51 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5Mf-0003pL-ID
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 08:15:46 +0000
Received: by mail-pl1-f194.google.com with SMTP id gn7so3847397plb.10
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 01:15:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F6MAtk+5HqcT/Yd54N2YMAGHA1/+Gs77hlckNQ4w9IE=;
 b=LTdrnlEuXvIHu0f9SndYac4n0AJ4nYNtCuNXMW0QDKrWAuPJafymkLRVib/CQMg9T9
 tPIGTSMtt7QRQKkldMwjUoIgGTVkrnA/hQsL2xUUmKZ9EJeg5NU4OR+SPChygS5JqpfU
 q/tShakcArwyX4YQqap71roEzG3Y2vSstVqYxh+1U393qsGUbszQRu/6492NUydtIwMF
 QaTspfT8NBK4s17sEiNriFRwKvzoukbuD91/rgNXjkB3WeuuWKZFCodXotMHWar9SLWC
 E3YJf3kATv2PuRJ6lDOBHp87hAbn3iHQ59ZJG6kfGeuq2ZtheIwEP6adlCugJw0McnHm
 zhcg==
X-Gm-Message-State: APjAAAVkNK6UDTc3Bd15LpQURgyaJO6quh/We3GhyIGkXd2KhcXZASt9
 9AuPVMq/dgKlzL459WcRub4=
X-Google-Smtp-Source: APXvYqz1jLWxHeINiroOnmhsC9/LaA7YssUKbBHqOFQ/hpDpzwUwCPg1q5SMQQtWOos6DTfZk8V6mA==
X-Received: by 2002:a17:902:3283:: with SMTP id
 z3mr77896397plb.278.1558685744800; 
 Fri, 24 May 2019 01:15:44 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id z11sm2232402pfg.187.2019.05.24.01.15.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:15:44 -0700 (PDT)
Subject: Re: [PATCH 5.0 66/95] nvme: cancel request synchronously
To: Ming Lei <ming.lei@redhat.com>, Max Gurtovoy <maxg@mellanox.com>
References: <20190509181309.180685671@linuxfoundation.org>
 <20190509181314.082604502@linuxfoundation.org>
 <d0cd612d-1bce-50ca-1186-de67054b33c1@mellanox.com>
 <20190521094535.GA28632@ming.t460p>
 <7a4863ba-ece9-e3fa-8396-21736d54e1fe@mellanox.com>
 <20190521104121.GA31530@ming.t460p>
 <23729cbc-3a3f-fe16-be14-71053253c53b@mellanox.com>
 <20190521124908.GA655@ming.t460p>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <09c806a8-7be8-3552-265b-d651aaf848e8@grimberg.me>
Date: Fri, 24 May 2019 01:15:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521124908.GA655@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_011545_596362_39B20C14 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Bart Van Assche <bvanassche@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> is there an API in the block layer to guaranty that ?
> 
> So far there isn't yet.
> 
> And it can be built easily against blk_mq_tagset_busy_iter(), then called
> in delay-spin style for checking if there is any request marked as
> MQ_RQ_COMPLETE.

This will probably make blk_mq_complete_request_sync() redundant
wouldn't it?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
