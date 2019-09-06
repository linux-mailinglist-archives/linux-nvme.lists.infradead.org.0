Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF84AAC316
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Sep 2019 01:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=k8XZR6hFcUFte0OWPcuYMiqGT
	mb0nxQbNdY3y193GPrERaDrO8hx3YKWAdMSBUD9HoON4EcPbstGcnZMEWOwYN6vajVFB0JxTFFHTM
	JuJ6H2WtxgDMtRF8i1Uc3DGSZS6bkoJeq2ZqRlojDsP3Ra+tz9e2oJQjljG7xoQx3UPizhO0q1d+G
	5Ag3XFQflqIPc0BnW6m67cNuTUHpd9el+VJGwlKy5l/sMNp1Uh9Y71wlqIubQLcyGpqnGg93+vMA4
	tOD5dPHeWEhbitHrEKsoTZAKNzGs7slXvFRahQu6lf6O5smc6LsxIvX+h1WWD2mTUJqOGCb+pEJB8
	sJoVUQ4rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Nja-0003C8-Q4; Fri, 06 Sep 2019 23:33:42 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6NjR-0003BE-JE
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 23:33:34 +0000
Received: by mail-ot1-f68.google.com with SMTP id 21so7318751otj.11
 for <linux-nvme@lists.infradead.org>; Fri, 06 Sep 2019 16:33:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=G1AIZTnQIuV4VB2asLKoiksiZSwa+2oMKn+CsH0C75BCEge0uS31FZoH1biThS5eLA
 k3SPBjzYH4Dn52w/xk/rCkV4PpK93TKRGz8F59EFQ9UMg+mdCxueTE+lsIpHy6jQXLqR
 UIcDyh+pWCHyAcQ0i6C9kB+RFUSjVwhpRHIAFvrtz9Iq+oKa/5Ks4dtfsKhg4NKabOW0
 7WpuBPnBy1roVjRCw2VpreSKHUwoCsq2eJfEIr80pxTiMioZ4EobG7YvjBP2d0N6GZrQ
 U76wU1klrAj4sP2802uES/kDdtEQQ5lBLNMnMfluvAP+AjCHQkq8PmgEWcYVKAbFDP3i
 daMg==
X-Gm-Message-State: APjAAAUILbPQ712uQ/l1uEWgqn4eKagvpQXf2+x6AmIGV+dcOjW0y7yL
 /gtuCM+cEESoXPwBYf6rrxg=
X-Google-Smtp-Source: APXvYqyerfyqDjBSkqBV5awpri+gcw1eOii1hkXi4+t7I8BPKUfhltTsqe2asvXehkt1m+lTJphnMw==
X-Received: by 2002:a9d:6acb:: with SMTP id m11mr9725890otq.40.1567812810260; 
 Fri, 06 Sep 2019 16:33:30 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id z33sm2710525otb.75.2019.09.06.16.33.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 16:33:29 -0700 (PDT)
Subject: Re: [PATCH v8 01/13] nvme-core: introduce nvme_ctrl_get_by_path()
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190828215429.4572-1-logang@deltatee.com>
 <20190828215429.4572-2-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f67b6e12-8d88-6dab-1211-64595ea58421@grimberg.me>
Date: Fri, 6 Sep 2019 16:33:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828215429.4572-2-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_163333_637303_165E3890 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
