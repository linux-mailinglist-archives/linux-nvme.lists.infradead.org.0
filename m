Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DB5AC358
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Sep 2019 01:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=CabjSE629aW3XLIXpM8fKDpHg
	zocyi74k7W+feJoP/+fgg8h/xOOoQgNiQshwoUEYDm0RCo3lyGB6LwbyqJxEQjBLUqo+lPBxZ8/Dd
	WXamsE7ePiZ/Efl+UsIHEVaTxhFZTvPPoWFzbfVk4lZUT5WMlcbRC1ULFKBMLtFuz+xjjznAyurEO
	BbAxwdr77kqjUo2q2Sfvxk0U+8h6d6yvo42gRpT+wVxqkvi13z7jfp8S9KGDC0EFrDV/cr9VXA9rh
	nso11uepJrLY9TYbl38FRVW5e+fGUhLCS/6MXPK2qH95gN6xRSxz2UpH6YnuHQbsDJhng1RRt6GYQ
	IqXTkizpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Nr9-0007wI-N5; Fri, 06 Sep 2019 23:41:32 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Nr0-0007vv-J3
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 23:41:23 +0000
Received: by mail-ot1-f65.google.com with SMTP id 21so7331421otj.11
 for <linux-nvme@lists.infradead.org>; Fri, 06 Sep 2019 16:41:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=mlitspzAkqRBBc9bShKioHY1KQDdpjJ2cXVNG0f9uAtJ+G+rKzF9jo/KYkzItJetUG
 aWQbx/fHV1NkFcSXFAc0B/6u/n2CGjqZVmBXa31KrhOzYBgeoPQ7E/bFmouEBy1Nq3mt
 RqF6bGfNQv0SQBKoKvQ28r2cw5C2GKdWx1odmdehvNL6A3xCLI3pUNoIZrE98XXNzCgz
 xy+rllVMxNF1Syr32mQBxpNl55+lF/q11Q42TahOIEkzO8CUVXIRCueeBv7DCpYU2Q5d
 9Rj4OkW5t4Pw6UAoCEJxWiwLUOgQFYnciNpRaeOLiccSwzYR+f20wSu3LeGEadA7LVK9
 ooiA==
X-Gm-Message-State: APjAAAUI5TSXU9brVay3tUpW/TEqQrIfqxK4/znNTCuP9r1LD7Go5/Af
 07ngcVkRuNmyzc1r1y4JiGk=
X-Google-Smtp-Source: APXvYqx5bpNcsYa/Orkc3OlNiguFadFwbV07a2BqnWWlxJRpFi+LCN2ZbuUx37mXIymaBHgyc4wtXw==
X-Received: by 2002:a9d:6014:: with SMTP id h20mr1400643otj.306.1567813281712; 
 Fri, 06 Sep 2019 16:41:21 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e18sm2677310otq.27.2019.09.06.16.41.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 16:41:21 -0700 (PDT)
Subject: Re: [PATCH v8 12/13] block: call blk_account_io_start() in
 blk_execute_rq_nowait()
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190828215429.4572-1-logang@deltatee.com>
 <20190828215429.4572-13-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4fc5c447-c853-23c5-36db-abfb65d47261@grimberg.me>
Date: Fri, 6 Sep 2019 16:41:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828215429.4572-13-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_164122_625217_B9A4E76D 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
