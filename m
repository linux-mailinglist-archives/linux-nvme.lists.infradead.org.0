Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9C3170C53
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 00:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=HodnSCDQiTI+hlKjrCMUsEYV3
	Ffaj9JheubO4SCeDGD2aKPUvMjGNxgXGRKa0Ox00FiqqT4OwEpScc4Aa27bDmMiMrOuPaXAblHXPu
	YXeszJCg8pERLSF8ThfyJq3Zx0y0c2xSO0wzLe/5AdYj1Litx/JHIOnAyXlAC76i8jjiJTw0aOA/A
	qv7c2qb8Bzisjxs9osTTcJNVBqCCFpGcWBnb/y0B0JTqEC2j0LelPMdfWyqsu8/KjvKYxbvNbTPzQ
	gmluBCv2AGqaB/LFeO2hWL13xANHzp7xqZBDqD9GUmTeOno/E8Goey1r12FTbKqeHqoVW1qcdecWx
	86vyo+VsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75o6-0006oE-7s; Wed, 26 Feb 2020 23:09:34 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75o0-0006nF-4s
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 23:09:29 +0000
Received: by mail-ot1-f67.google.com with SMTP id g96so1086099otb.13
 for <linux-nvme@lists.infradead.org>; Wed, 26 Feb 2020 15:09:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=S16rW1t+bxKmC/V5ZZSj33yQz01/CetySwnQGR01KCH/7icJRwCJUecVruxE+bKKOx
 jK1PPzzOFrXK5x7clqH60/74Mlhs4UWj9XAeXhB801K/U93y/UsH7EYhxnbjvQaqgc3b
 m7wNzOgdkp38JZ2JIok5tQ4ED25HjwcTfkgKZWeiSbw1PE9LrQSMHLLMQVnGcgRKkgnD
 FuqYFIwfBXyNO4LlPUkel50kumpCWLeJ6qvXisN+fJSGxhqJCH0Ah0Oi/UevpfDMCZmH
 Y8jmXKpi/WC/sx9UeEDYG4LkXtrCdeop8SGHC5bBosAZq6kB9cEk/QkbNyx67xIgYeMt
 0sIQ==
X-Gm-Message-State: APjAAAXz36Q8qHwfK72VElKIu4y7JPWznUME8Uoy4cR3wZWmFOysKfDh
 g4Njd7vrFY/1jygmx+F9WnmIxp3l
X-Google-Smtp-Source: APXvYqwkP3uHJLircWTm7OAuwQwMi8hDhyyvFg7yCRw+uqfpZA7le4HeJdPqgRGNQPLFDmH8BAlEcg==
X-Received: by 2002:a05:6830:1d6e:: with SMTP id
 l14mr996105oti.32.1582758565294; 
 Wed, 26 Feb 2020 15:09:25 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id j13sm1289899oij.56.2020.02.26.15.09.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 15:09:24 -0800 (PST)
Subject: Re: [PATCH v11 2/9] nvme: Create helper function to obtain command
 effects
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20200220203652.26734-1-logang@deltatee.com>
 <20200220203652.26734-3-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <60377f09-c961-10a1-9d5e-69326ff1f046@grimberg.me>
Date: Wed, 26 Feb 2020 15:09:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220203652.26734-3-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_150928_192294_3D1D5B63 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
