Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E3F1D5F04
	for <lists+linux-nvme@lfdr.de>; Sat, 16 May 2020 08:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=FjNcrgFHpBZQZAcTmK0HSfziy
	JV2XeF52MdxQrCpKnIxWBgRAXvYFd1opR8R41PyiC8z6IWbpT4KvSBBrL9OKPBrAhX/XqnzP85JDU
	0tqdrWerlRd7hbWoQOl/W9HxHezRVVjA92UNAzHtCEco8UkvvD2BPc3ssQB7KHUnCypgcYaJweddg
	FKj1mx160T3eEEouz/IZYeNrGQyDfJkPJfYkCbPP62T0z+UbFiqdY/dVW/bcPPzoBeiBDDf/KvKod
	AHYLezlxups22bAnW9FpcGHvP5+Q/b7ZU9IBwqeZqJ+IQn/B9cc+ntHKL7RgHk+JuM6s5PQGohgAC
	fv5ZliDdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZqDW-0005TJ-3y; Sat, 16 May 2020 06:22:38 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZqDR-0005Sy-CR
 for linux-nvme@lists.infradead.org; Sat, 16 May 2020 06:22:34 +0000
Received: by mail-pj1-f67.google.com with SMTP id k7so1921390pjs.5
 for <linux-nvme@lists.infradead.org>; Fri, 15 May 2020 23:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=IS/S940uxS7oCpOCfRo+EHOEJYjd+4yvuQ3PyTx8pu3YrnHzEFX1u33M8AagC/yZPD
 cwA+4S3lplOsTUSvP5/k1DlnFqBornYdzc+MouLy4t6PJGvkfRtJUWLS6BbO0HP0b3W6
 casYAMha13bGsyjw2376A4cjkzsm+AKRZ3eZFOxFtUmthWJlE3RZnPqj5pUKk9+Lkmon
 cNm5lNbLgf7SAkDxz6h9X7LL5HsrrWvpbMHIpU6WL4mAwZ154Sp8L9gfawCyZDrEr0jo
 BbGfa3TzM1H2H3iRHM/rJrsJ0G73XAImYFjUY+JClGJdp73nHm9ZZQ571i/QdYUzraar
 0CVg==
X-Gm-Message-State: AOAM533ncBODJBI1nZBSvYLBPy+uFLhCUpcEcfe3+TNyD0EjlRFbkT7O
 Ij5jLZe4GUzY8aY+g2D2KyU=
X-Google-Smtp-Source: ABdhPJz2BE1zB/ORAu4hGfto+YCyIFr9JC4VW0K6jXndG7YtNAxj88GRQcp6qA55LYxOXfYuseEHeg==
X-Received: by 2002:a17:90a:e2d0:: with SMTP id
 fr16mr7351713pjb.146.1589610152130; 
 Fri, 15 May 2020 23:22:32 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:e4f0:6472:2168:72ee?
 ([2601:647:4802:9070:e4f0:6472:2168:72ee])
 by smtp.gmail.com with ESMTPSA id l3sm2988724pjb.39.2020.05.15.23.22.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 23:22:31 -0700 (PDT)
Subject: Re: [PATCH] nvme: delete an unnecessary declaration
To: Dan Carpenter <dan.carpenter@oracle.com>, Keith Busch <kbusch@kernel.org>
References: <20200515120659.GA575846@mwanda>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <9be24a10-aad2-9101-3cd6-7365f76825a7@grimberg.me>
Date: Fri, 15 May 2020 23:22:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200515120659.GA575846@mwanda>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_232233_422524_5813A23F 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Jens Axboe <axboe@fb.com>, kernel-janitors@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
