Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DF386EDB
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 02:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eoGSfILctLpcmioon4v8eSQP2WXj79AY8Xq3zq+pzGQ=; b=pQcUgCTzajYc7LPMFt91oMX4l
	XVEr809J6oKg05aofopcxk3LDsZfjval+4EI0M5AC+7TfQPVbrMPmXx6TL03JaivjIxBACmIlbBbO
	uj/uyL59tNAvUNbl0AzaWaoDeXfRLWaA5EdSyS2wlaTHLM4l9kZdq8/0EXoaOcGTAM+kxrin+6g1Z
	nVQMHtrfMyGtpfycTm34saftPne+rYNxXa9jdgSthxGcLm5KgzU0PBhkxsr3vjc5p4jxIhM6hP6OV
	OrKi0HIRzwVeuuGFql1tTk+Eucf6q9XfhF6dJbAZqFbFAVBK3QUlJMOqJTTrjkLJ3g5gST8gxQdT8
	8zfdr/9AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvsot-0000jK-Ox; Fri, 09 Aug 2019 00:31:47 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvsop-0000iz-GU
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 00:31:44 +0000
Received: by mail-ot1-f66.google.com with SMTP id q20so125982586otl.0
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 17:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EcFI20RDG1E9xIPHzwcPWKWgCohSSGQzx/wkIQpb3Ck=;
 b=qLJFVcErcwJ+khk0mkepDeE4Fq4s74R6CDiZm0unVIvsI1Cv1RQ6LCC/yNtI0tGnhQ
 QsctfIX1c510z+MsN75GXiGIV8cRVcHb2qi152KBzk0MqzkIuWWPKzpmol2uAR9UKpE2
 noMFJyW8Jrik/2I8YkyvfnGcb1RgUZXy9TK0FEJmo7NvQEkJsC+v/VRxTC2jZ/EaVVKG
 Xhqa3SsjXDlVupIN/bphcdsMs4LBzisC+yA3W7hF92qXF61VcMiac2IkXBd3ibDXRAah
 LbOScUVyPYdEyTP9KPD3LXb6WIt8F0W47zI+aiyj1Yt7NOkqxF4cbZEOB0od684j4v4/
 1Z4Q==
X-Gm-Message-State: APjAAAUUmlSVC+w4KN5XEXz1XKf490mb3EoxWvn78j+k+yVcKfjpqS58
 t2Ay/1PtMLkSJH7OQbIVbPpd7XVT
X-Google-Smtp-Source: APXvYqzHFsJTMsyg+ACA9TXguqeeqNHhlotSBt/jaZB7BkylQb7xoY9fX8t2NRBn0sJUIhPpEUH77Q==
X-Received: by 2002:aca:df08:: with SMTP id w8mr4397673oig.84.1565310702761;
 Thu, 08 Aug 2019 17:31:42 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 20sm24476298oth.43.2019.08.08.17.31.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 17:31:42 -0700 (PDT)
Subject: Re: [PATCH 0/4] nvme: add support for Get LBA Status tracing
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <edbf18f8-fe9a-f9ec-2fa1-75e22466b6ff@grimberg.me>
Date: Thu, 8 Aug 2019 17:31:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_173143_547014_CF7018A3 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi All,
> 
> This series introduces command tracing in both host and target side for
> the Get LBA Statas admin command which has been added from NVMe 1.4.
> 
> Please review.

Series looks fine to me,

Pulling to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
