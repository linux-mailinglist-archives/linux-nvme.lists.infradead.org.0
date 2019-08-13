Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3F08BED6
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=exzk6PpQ4kTK4KtBsRIBs1qAo
	Xq2EQWfXAyY0bk0iHNoRlbytAIjLXWV3v4Ye7rr7oOWV0gUO1WXnhHaSnp98H22d1jJ35Wh5fMptT
	DrhChfNC7NyRNmKZCEOMvwoSVBcAUWxOPg95Qw5KYK674g2H2c9Nfe9RaVRHAPSB7qp7D5KvZzSg2
	5V46lL4M8MGA5/u2FYVdno5i9zLdVTaGhyP4mwharqXbJC0ETufjpFcuVPfiReT+dWanxvcyJnrl1
	0y4R9UML5MClgzkJg/72AKEAIPjTfAg3s4IDKJh1in4ijTfHfci2jQ4f1Of0F8elw356ZkbMA/IQH
	inIGRSLIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZrZ-0000wd-Dc; Tue, 13 Aug 2019 16:41:33 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZrG-0000oW-AV
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:41:15 +0000
Received: by mail-ot1-f52.google.com with SMTP id q20so22081557otl.0
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=opaohJm5/Hq2y9BQDvNfsP3RW03JVqIg5PNRCA1AOS9j4v93DDs7ndtWq1Yzp7E/Es
 /c69SockiEUJe1F/YNhW+Yh0YmzpUwDGG9iI7JCKX1IRBr9nlMp9Nz1FplfLKZNMOB3K
 EGvzboMghUtw5pzJD4E1o9oE5m99PaNz2TgIHUvdJr7xCjzqPOSEokBescOEkZ19bm29
 GOHuR2YOKRKcH0fbSKd4gHrlkwyIv12kXdQiyzBx5h4TmWsRUDqdAUkUlt4GDmucRPte
 1eAhl9gilRS/J2sTGu6WZ6GD8FmH+1dBHtNlylnNyJY0Wnq/dxxjxEFXWCDLtQNWMm2r
 Uo2A==
X-Gm-Message-State: APjAAAVDupaJutZd04wj4ViRS/bEbOv9U9awsr7guqbfp2CHHzgNOvdF
 pjizneya82+BVzT7OL/ANug=
X-Google-Smtp-Source: APXvYqyO6Dg4EtBhv/LtEtU+s+oiJCAxNKOlXur1JF8tzhzyG3HozFn9hkeOCXtHc5IQZ/kaPQwA1Q==
X-Received: by 2002:a9d:170b:: with SMTP id i11mr32529697ota.60.1565714473309; 
 Tue, 13 Aug 2019 09:41:13 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id r130sm38313983oib.41.2019.08.13.09.41.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 09:41:12 -0700 (PDT)
Subject: Re: [PATCH 4/5] nvme-tcp: Add TOS for tcp transport
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
 <1565702251-17198-6-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <91936ae5-a0cd-82ac-2679-e76005286876@grimberg.me>
Date: Tue, 13 Aug 2019 09:41:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565702251-17198-6-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_094114_524334_BEFA691D 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
