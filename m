Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAF86D7CB
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4vOhbimzINubdIma73FZRihiY0M9VPjP18cUYqrWHDU=; b=SXYYJixFwsF/7/v58qCN12MjB
	6ieBhVNHgOjieVY/XVhGOLD6b0P/wrHN8nJfATkFvN97Ih+EMXV4PCDP0NFmA+4BR8HgYGE8YbPmc
	ipoXksZ2BH494h1QZQCCFTCnuqSq8v9oBb24dkLN2lLIfrvKFG2cj6ObynWg03LnbpByDjW/j80ki
	GdNLlDY/4agsYhixSxnS8aoPD4yGuUnP8xPui3FFnVccgoD5deQs/If+T+xOAPw7HUlSRtbppQf3S
	YSamuW3Z5z29ANjfvdZ/N0G+tjaEFAktHF7kDBHgLzh72A9TqhWTn3wP/JaiuPlB2rV83Tos0soYM
	6pePLNPgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGqX-0002VL-1J; Fri, 19 Jul 2019 00:34:01 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGqM-0002V4-Bc
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:33:52 +0000
Received: by mail-ot1-f66.google.com with SMTP id d17so31046065oth.5
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 17:33:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K7VDGcdLslzDuvsgssbSFZGvxUH6OnEyYume+0JDnYg=;
 b=WmjsB4E90dDNJTrJz+YFufN8f5efU4Em4PY/RMHJcrEUIeO2+GmYv1rfqvOrVKLMZM
 N4zFlRkIAlqyKLoSzD2rc/0ETTwXhVSjBUdlKbv/li82FDF1+5HNxd+K3LdvemCYq3SF
 Y/hSyvMwn5iIe+EHJdZmGEjQkS3xR0bdwYj/h4wTGGuvYvmrkNcjMXfi1ZFYa/YM9eSe
 /HewXgVyY5QTahI13QZMo7jaufKloyFse27+CoECAqFWRiJhYz5UpbYrWOYxoxvGImhu
 jkAWZ6fxrNSxOyISXXqiAUmnEwzJmUOurfhxZMbYeLqncXsFph9696ccxvHrFt3XInUg
 7bCA==
X-Gm-Message-State: APjAAAUPbLUn3NAfwlcjwfFV88ke0u379ztVSjwl5D4F7hUUWKajd5s1
 5p22iOXqpgdgsSN2XoHTUyh80AZv
X-Google-Smtp-Source: APXvYqx7lGDh70AOy75u30GqSv/7LGC7+hQNxucJRsygzdK4iLSivxN265P8COBgzSVw6WmBP+47kw==
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr259540otf.312.1563496425383;
 Thu, 18 Jul 2019 17:33:45 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id a4sm9710362otp.72.2019.07.18.17.33.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:33:44 -0700 (PDT)
Subject: Re: [PATCH 10/10] nvme-cli: nvmf auto-connect scripts
To: Hannes Reinecke <hare@suse.de>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-11-jsmart2021@gmail.com>
 <2bd2a068-dbbd-84e8-250e-d9d4afa640d3@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5669f502-e931-d0ed-71f7-91d3fca01816@grimberg.me>
Date: Thu, 18 Jul 2019 17:33:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2bd2a068-dbbd-84e8-250e-d9d4afa640d3@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_173350_399207_18F24635 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> The install sequence is slightly odd, but not enough to complain.

Whats odd the udevadm vs. systemctl?

> (udevadm trigger before systemd daemon-reload? I'd rather do it the
> other way round. Anyway.)

Why? just out of curiosity?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
