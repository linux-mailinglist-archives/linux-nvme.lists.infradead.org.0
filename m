Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772CD66313
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=TybezoIHJ28AFs+wR2/MuzgLk
	YTL/mPci3pm26DRtjme9BHHN367U4RlTaMdpHLg1WzdW7+/lDY365Kmg7xlaGXIn1HSKNgkPhSgXz
	6iJGnx0mA/f2IsqErBf+YLxmeXrQnjUaM38sPPiqQ7oXxU5Bt7hfazJOSry0tgYJjEqgfkiZ58q01
	g1zvV17Ih4wQBfl56Nhj1ZLqt/iDI6bp775iQ6G2zZlBrf7/WWDHJ2W/dlXUsV8YknauZfX3AI4K5
	Le3EfpXL30TjWT+pjeW4yJmHt1wHC+2NXwgSFlJuoJJcC0xH3b36TgBq4kz0gwGeWmZd88S8btw4K
	QrC0/qXkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljlh-0003i1-Jt; Fri, 12 Jul 2019 00:50:33 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljlV-0003hZ-F9
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:50:22 +0000
Received: by mail-ot1-f67.google.com with SMTP id q20so7792779otl.0
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:50:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=PbujhABsnTc+bka8piNqi8HHpGIPkAxGW8z3AX6nWn3/HbgtXlDV1Uhr9RFfQCCg19
 8PzxX4Lgem3wLVHIXKXKwuvACgaKnYVLhY5yZMa5U7SY2SnoppIuWzn7ZN9l/Xs3qO+Z
 cn0rvYjXeVPbmE41gBVE/mp6oJ4E73tv4/d44zBjyj1r5Hl6Rrz3zCceCqUOEHiZBvVe
 8AC3fe+nxlW3xB2L36ksG4nk2t+hbZDYaSaPOFNnodnFRJgqKMJqELDuEJLCyD3cLLkO
 LaZADmvDeFynuN976vwIBI1M22Iasxza/QkX2u+KiG5XgaE/8rsg1H8tYfMI+YoEPWeA
 D0qQ==
X-Gm-Message-State: APjAAAUk6bgrNAS9h+nqDjJMKTvg+hGnAoJJY4YM1CpE+jcqMZUHRoZx
 7OjBRMehDRJQ0f4PsYdE7SYkR+1/
X-Google-Smtp-Source: APXvYqwexR75sOiJnZY7MyUtv1UjXSfh/sQuOFR15xrHpjSXypHv2vha12uRwVW72jGlFE7L0YNOHw==
X-Received: by 2002:a9d:6a92:: with SMTP id l18mr5754127otq.294.1562892620814; 
 Thu, 11 Jul 2019 17:50:20 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i11sm2572404oia.9.2019.07.11.17.50.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 17:50:20 -0700 (PDT)
Subject: Re: [PATCH rfc v2 07/10] nvme-cli: Add routine to search for
 controller with specific attributes
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-8-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2811c9e7-2580-1e93-e74f-2421fcdf32e1@grimberg.me>
Date: Thu, 11 Jul 2019 17:50:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-8-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_175021_512108_FDDDA828 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Hannes Reinecke <hare@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
