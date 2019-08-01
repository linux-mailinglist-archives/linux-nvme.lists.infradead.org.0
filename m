Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6A57D2A2
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 03:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wE/x6mSShvkFSO21OGp94kfy5Jzg2kDEpQFx4yda3vk=; b=LCYZwYmokt0R1W6yCFTPRizmx
	Y/d6Glp3/qWSoycQozgf4fZtu8uB+nBsKSIqAb3fQ4xXpyw8wWcPEhiKE6YKYXpOFFK6++V3XCChr
	VH3POaN8rYZdemKvHjYewfpUJmUw7ACgpWB913sMm1h9p4/pLz7ulB2nlAGKIzT8MUHERfRRFTtzv
	Qr25Sm5dvhxfBBZZ/bEQ+tkrWn1aEFUGbPb9peDNUXgD4G6Q+59wARw0mQUYkm47q3jVYkvdVVh/g
	8ocfIYu+IfmE5UZZQSUkmSnUmop3GFUNoMMNSy+taP8LFVcz5NzlHeTMbkly7uxOYo7oHWsFZ8ZSs
	34zjFs0Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszge-0007a7-Cc; Thu, 01 Aug 2019 01:15:20 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszgZ-0007Zn-TP
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 01:15:17 +0000
Received: by mail-pg1-f196.google.com with SMTP id d1so193359pgp.4
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 18:15:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lmNzmZF9FJi2vaHW0PlNrHg8bpfWbI3lWw/3vJrbfYo=;
 b=YVltJmfq4lgoW8Gp1/zPSSMpk2rwpN1hupnSB544CVdmJNHFQSepovPgpyV6eZcc3h
 fxe5pEqcvV18lAvwoG1tNpvJFFAIwp+40IXc02TJzjPRpknGanUJZDjA7MRsSHGqrZP8
 nI8fCPa0ChG8QBQmCnEtReTC6VfvvVYYxkAHecrwitMSekmmIupZ6GvTBSxCudu6YSJ1
 zdmhPspqrg0w7eMkQfiB4V0/9zXSEBTELknNXy0ujueQ+ZyHaCydhi4g2TgVOfI85MBZ
 6bXht0KdVHYLthOR9+os6/nNQL2oGFrVeq+LTokHSkeZU6zX7oAfwPu3x/b8M1JHxWXQ
 bbow==
X-Gm-Message-State: APjAAAWhGprascDHPZ7z/iMyJjTktAF2QId/7/NNerX3Lrx2T62ToDF7
 TAF8HCSaSSFYN/J05TwsXGs=
X-Google-Smtp-Source: APXvYqxKpwvyxh/wQmA8Mxo1dRM40SKDpLS9FjY7d93kQQ0SCC3Xp8SkWIZAP67dE0BLmJX/KApFcg==
X-Received: by 2002:a17:90b:8e:: with SMTP id
 bb14mr5706485pjb.19.1564622114596; 
 Wed, 31 Jul 2019 18:15:14 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id 22sm79604811pfu.179.2019.07.31.18.15.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:15:13 -0700 (PDT)
Subject: Re: [PATCH V2 0/5] blk-mq: wait until completed req's complete fn is
 run
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190724034843.10879-1-ming.lei@redhat.com>
 <20190730004525.GB28708@ming.t460p>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7eeb2e89-a056-456a-8be3-6edbda83b7bc@grimberg.me>
Date: Wed, 31 Jul 2019 18:15:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730004525.GB28708@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_181515_949023_911A4CE6 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
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
Cc: linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hello Jens, Chritoph and Guys,
> 
> Ping on this fix.

Given that this is nvme related, we could feed
it to jens from the nvme tree.
Applying to nvme-5.4 tree for now, if Jens picks
it up, we'll drop it.

Thanks Ming.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
