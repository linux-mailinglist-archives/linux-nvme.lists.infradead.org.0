Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AB594D39
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 20:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rs9bjhNYFor1aM3Aj89kpYT+lneH55fbRMZPwQB6WoY=; b=Kck7oEXl0EaYB/70NRPUK2mgY
	CAWH1CkPStpFdLwas27lZ1XnMUeZ/AaNbhcOEgTEioAoPFBp2LnNkbq8OcfR/4H7jNCSY81DlnYBz
	Tj6OiLDUBo0ryONKqvuzHPPjcXATVqRyypvbfV2kb7EKEe/9SPQAmXBAA/K5qfJtl7XSS5VwpmH+m
	xDl+deD8NJOxtf8qtxOFIXbwRUlSjFtt02fR3f4eSnXVLUy2E6LWvghcaRG4EjUUQXYyL0iIxC/Oo
	Yy+3Lf8RmX8UxT7zkXzA6KN/5hm6y/AyQEHK42OJiZiVxNzp079whZgXeCr2iUP0KymCjfCXQ6lPn
	wPaCvITaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmjL-00032w-Bj; Mon, 19 Aug 2019 18:50:11 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmit-0002Yf-MC
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 18:49:44 +0000
Received: by mail-oi1-f193.google.com with SMTP id g128so2127007oib.1
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 11:49:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yOF9u7G97Qj3j7+jqKcNbm/Us4qgzRZ+GaP+qHiUFvo=;
 b=U2bZFJOabgJoML29/0V1bn6HYdMBd+TE00zMBUDJikfriTpiZREjUxgfqLHYWz+5Mc
 DQEmkA/2mbIMsKaOHUdwe8mpqrKFeKH95L0+tk5ECVwhL9fRpKm3MDR5tZIBsmlTbns8
 TzhSaKhg5d+ufZXRKRQtrPKraVfbNyO1sAoOdjRPli02vGcLtid8f0NFMOySJfiesHPi
 R4QjoHnI/jcEtugfBhE8rGpTB9E9KVPGzqoS6tH8tPOVVG+KzLb9+2ogzzQspHGjRttY
 39nwrzLEpOE8A0EhqfzPBCrNBSo3v2O2xrL1lxvk4wHf4nahphfQgh4lXz6gZhefFkch
 cLqQ==
X-Gm-Message-State: APjAAAXjTdcvYDGNlY3mTCh8mpis/28F/QlFHFO7Z+C8YQPUKMnPgQhX
 7FVKCO0HYpnVAh+YWzcq5lg=
X-Google-Smtp-Source: APXvYqzMHxD2brbphrhSxkTZ5tWQpxZt7Ah2OAshqPQJFlCnIWC5oovKCN24httBGRyGjkZz6qbXvg==
X-Received: by 2002:a05:6808:342:: with SMTP id
 j2mr14872927oie.34.1566240578792; 
 Mon, 19 Aug 2019 11:49:38 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id m18sm1339046oic.12.2019.08.19.11.49.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 11:49:37 -0700 (PDT)
Subject: Re: [PATCH 0/5 V5] nvme: Add type of service (TOS) configuration
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <054fa45e-a2ee-d291-4c71-75f7a1872f9a@grimberg.me>
Date: Mon, 19 Aug 2019 11:49:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_114943_729699_6FDCA274 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme-5.4

Keith, I think its safe to take nvme-cli patch as well.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
