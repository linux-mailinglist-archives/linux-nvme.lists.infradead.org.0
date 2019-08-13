Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAB48BED7
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=ikdZLMdjreXvuTwG7mjiIxD++
	OiDl4GyhfBr0hBMSHHzaG4+3CjoPl9vli9L+VG2jDtstQjBkVsIlA6PZK7BKhLSMCtrUnejkZR8Vj
	Bl2DO/lW3oPMWYnqizHQI8MI3ikZ24D7/YUwlNuP4VQvD0s98iLqeY1u8SdOq7tDYPLWxUMHph0kX
	nVHj90eSU7KBISk4TJsrDynimLIjko5VVGvyeRKmDinwQfG+MFANwOwu/mP7cqrysIV2tqQaNmCkP
	OXdxr46mu94yb4NDVV//SIUuE7IW7jZKSqQPFzlmx1oKIyvHBGMBkar3IYBF6fBD8NyBPzYY/SSrm
	gnNfTmEew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZro-00018U-D9; Tue, 13 Aug 2019 16:41:48 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZrX-000146-Jg
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:41:32 +0000
Received: by mail-ot1-f50.google.com with SMTP id o101so22043447ota.8
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:41:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=U03Q7KRA1teHCEoU1ZmwlbHrwwmFF/poIFzI3i5xdm3OHTI0BApjP18ZpvzPATocC5
 Ncj4TTRIjuWlFD7rHhkWHuTgfmWAWUzKD+qGO7BxD3Cpwh1J+HraoXCV9s+hl5xDTQh/
 s85hqPQXlNnxV1s/iC1tdrr2kC/U/H4L3N5DcwGw9mayQNTpKMlZJTeaYIfMtIe0w6wz
 7U9dV8v/ARgjfLBjrcl31BMC9qkqrkErpZPts/YA75UbEe5rsI/kkS+2aS/FNvn+IGQY
 3Zva6LvRP7OOTqlP9GnTclfWEQDDFzGa/NrN2vb8kpSGtVIPTj2e8WlxzeXIQ1prWSM0
 stEg==
X-Gm-Message-State: APjAAAX7/AbOI1hv3ddwRx8X5zEfC7ZnXbhuxGFe9PBqLOZvEwyAncRU
 QdHRPA/HBMMyfO/9w/hyzs8req36
X-Google-Smtp-Source: APXvYqz2jUL0iRsdrVqXdDixxlU3Kdhy+v2K5J2vgYcW5+cwBOzwZ6+R3JV5RkfgAe4mrHKV0sYW9Q==
X-Received: by 2002:a05:6808:4e:: with SMTP id v14mr1919890oic.4.1565714490547; 
 Tue, 13 Aug 2019 09:41:30 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id b10sm4526793oti.61.2019.08.13.09.41.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 09:41:29 -0700 (PDT)
Subject: Re: [PATCH 5/5] nvmet-tcp: Add TOS for tcp transport
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
 <1565702251-17198-7-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f15e1718-3b6b-7a8d-761a-02f5ef5a93cb@grimberg.me>
Date: Tue, 13 Aug 2019 09:41:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565702251-17198-7-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_094131_678887_E4133662 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
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
