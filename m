Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41D47D28A
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 03:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xd9nSJfu/ZXkNzjUvhShabnZKzl1Cz8vD7Ne7onpcT4=; b=DwI0qs2Eu7TlkwcULyVpcxXCA
	TDTOPHlQzqQvsVHlIvULhnuEXX83fOU8QPRZFRwtj/XetNraUpEprHjjxEsUbysrHER1Jm5oxosJ/
	BfwO99lQLhEEuz42VakmhEDzIc1z6uu/IGGsy+iJqweBXze0pWR3YDqvr72koZe0yTuoHIyxRdLnR
	QVQ7wS+OTWI+XTu1XTkA3gqxsA7WRXegMAURxgEFndaxsmCJjPrJ7Vm3MrXmenKq3SL0nPZcJWbH3
	h8LzJOnlNLqwH3qybjE6A59hWEvSdVtoTH1yH23GpVjYi9y3F3YD9jU5dy+kadaRzXg7k41lki9JN
	acHZzVRKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszUk-00024Z-6M; Thu, 01 Aug 2019 01:03:02 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszUf-00023t-Cp
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 01:02:58 +0000
Received: by mail-pf1-f194.google.com with SMTP id r1so32845017pfq.12
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 18:02:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GbYit1a5D8rEwLMyMArcrhnCQRGQCS4YYQcJAe/0Ln4=;
 b=e1C1Dl1J1uRGXe+gXBokh94+5Vvz5lHUdnH+aSBtmuAunoXR76efOl0pv/8rnxxuvH
 VBPf3Cm6aOLkrJkp+UUrmhZHMsiz9lUYWHdXxQ7qMO0kRQ03WabNmKPt2O81ozvoW++y
 rEkWzfZpi84FsPuz/iCOMHQ0Qf3AGWH6A8g+SBH60hTr77KmffKjxgcfc+bNbrb/XK+T
 6SLJCWFfoAw4RCYqj7Hgw8+auRfTXfT50vCmfrOtIWaTyvCWeQBE1lJbAunVA5cMNpaT
 F9VyRhl3ISQedn19aQZLBicPNDCoZyj1LutsbF63gZ9/Zx6pmuH8yBUFQya3zfvOZ2/i
 4K4g==
X-Gm-Message-State: APjAAAWH2FDtyS/oYBga7ALKJKeH6t8IO1H0CbjgqT6efDF/2PYf2crC
 TbylZtv7ENnWXbf6WZhw4lE=
X-Google-Smtp-Source: APXvYqzgSwGraMxmkyeBlFGqAmY8qdlWkjCvi9suIm/XDMg4NNq2vYm+NG3ihoumu0Zh6a2ZEucHKA==
X-Received: by 2002:a63:188:: with SMTP id 130mr114842632pgb.231.1564621376041; 
 Wed, 31 Jul 2019 18:02:56 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id z63sm43268250pfb.98.2019.07.31.18.02.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:02:55 -0700 (PDT)
Subject: Re: [PATCH v3 0/4] Varios NVMe Fixes
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190731233534.4841-1-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3f9c1d7d-edb0-f4b5-dc48-fe0f061b1e17@grimberg.me>
Date: Wed, 31 Jul 2019 18:02:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731233534.4841-1-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_180257_436020_0CF002CC 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3-rc

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
