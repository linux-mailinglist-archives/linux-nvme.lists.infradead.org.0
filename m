Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93811ACC7
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EmGnbCMC3zGFunXZ0VwepZNn1OXULy67fFcODIcmeCo=; b=bmi7vC6wTD7mk/ZNol+6HRYZL
	Y4AoVYcN6R6EDFgYFqfMUrKLBzfogAeqtL9pwhlVCwVedLzrIQTwbTrt70KrAjZpw8QhKLZGtcJl9
	uCdqN90D0zv8ztWFjGAPXPLptpm0sTwgtvXeA1M2dw7C2R+OrHki6mKedF4GkAYtsDwo7lCRBz8nC
	Nc5dBzvizdaZjQDbDF9Q948HYHip6t6r8CRY5H5BitRh/Ob+ziOH2vCy6NYaeGF6/8kFLW9cnYJS/
	6tK/1tPLalY4SGhMlAcRs0s2GrLvH4yCrP1gafaV79A/jqdXT2fiG59zWRpBxHm5xuLSvb8EaYkRX
	8fAZ6AQ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqMx-000624-7B; Sun, 12 May 2019 15:26:31 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqMs-00061i-0A
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:26:27 +0000
Received: by mail-wr1-f67.google.com with SMTP id f8so2849405wrt.1
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:26:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o/AoxVr7vQ7qsrAUjd1c84D0pImVqh+ZsDUmAHq9Syg=;
 b=hJYZ/NMXYEaWvzVGPIXOhd7mFp2QK8hz1e7SGcZd3ytPbzfM7w+QzgL0Zbv9auFzP5
 1AmURpoTx8oCDPZsrjFbXfUBNPEuUbnJn/O6RndQCYDxHn9Hc8fmjPrEyT9BxDDJXCQw
 kXvhuVA8H+BL0aWA//sMk5DYz/QNbJrHPkje5obSpMX7jpl49aETd0jGQLJmQEZ5EAiw
 1OElEDA8WL+oSnfKpI+0LcCSacGe25CGvV/pmz9BLZcUA/PNvj/XUOdARJKBZxyypyN7
 XOd5PwZ4GMvTNmmFH8iJtmYFph0GvsK61WRopvpXRc9dzohJoCzEXEZrhIDGg3rI0d7b
 NYGw==
X-Gm-Message-State: APjAAAV0TQGf7jx+Kz9J8fNioBIBmyJOCIMtXHG5/1v22bIzRZdE7kmk
 pY1D9DDfVPBDh8HtJAhiquo=
X-Google-Smtp-Source: APXvYqzVP0d1x/Qrv24KNdjY8Hq3HxczrnG/48N3dclyS+8rd42YiZGMPxvjw0PL5MUqPzPksFZJhQ==
X-Received: by 2002:a5d:4348:: with SMTP id u8mr15172229wrr.129.1557674784150; 
 Sun, 12 May 2019 08:26:24 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id o6sm28121311wrh.55.2019.05.12.08.26.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 08:26:23 -0700 (PDT)
Subject: Re: [PATCH] nvme-rdma: remove redundant reference between ib_device
 and tagset
To: Max Gurtovoy <maxg@mellanox.com>, hch@lst.de,
 linux-nvme@lists.infradead.org
References: <1557139675-2469-1-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c162fcdf-9ae5-93bb-e1f2-5179acef3083@grimberg.me>
Date: Sun, 12 May 2019 08:26:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557139675-2469-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082626_043626_E59A00D6 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: israelr@mellanox.com, dmilburn@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks good max.

On 5/6/19 3:47 AM, Max Gurtovoy wrote:
> In the past, before adding f41725bb ("nvme-rdma: Use mr pool") commit,
> we needed a reference on the ib_device as long as the tagset
> was alive, as the MRs in the request structures needed a valid ib_device.
> Now, we allocate/deallocate MR pool per QP and consume on demand.
> 
> Also remove nvme_rdma_free_tagset function and use blk_mq_free_tag_set
> instead, as it unneeded anymore.
> 
> This commit also fixes a memory leakage and possible segmentation fault.
> When configuring the system with NIC teaming (aka bonding)

Question, what about sqe dma mappings? don't they need to be remapped as
well?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
