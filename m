Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E502B66298
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 01:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0n07GdcaK1UfZ7BnBPhaS0kbzVKPUuSVkljl5Hs4hHc=; b=FPI3NLdmrlEglvzyQTijPB5hE
	XvqNS474XoFNk8AuGD3VMNrqKWbDGYx/Xy393h8NkuSS/eBuNMhd7T+LqlDPt8J/T6Y6HbUaDNB7u
	L9Q2jEk1iuFQZb5kmmpgbzBN4vN3WbXZ3t6njwBwQIAJYXgcNzvBtXQGOFmMwWLvYWGiD5s4wIZN9
	Jn5h3AF+l/GEINyi47B5BQoxoyMQJTX+EA1SW2Poh9vlBIVHTgULGISxp2gJUjAqv9ZJRhdEQJP7U
	mESEU2Ae+ajt+WAQva7n/CaB4x2EagIBAsTGdgJpgIctnLtYyKw5VNYegID2eJ5f2fObb3HZh3qUo
	YEIxCmmrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlitu-0004hj-KS; Thu, 11 Jul 2019 23:54:58 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlitf-0004h4-3G
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 23:54:44 +0000
Received: by mail-oi1-f195.google.com with SMTP id w7so5937237oic.3
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 16:54:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1M+s83TRuMg+izdMrabedDBqWpf5RTsi+nojUIIvVvg=;
 b=Lap+nP7eabXnlBzLNpWdDovUJ7tPv9JXUebWmTAKW71rKGvDmLNgtB4kaeqs55HcuP
 aGJ0Mb2yhrtqhfKidX2rKkho0hb8zvbo9MJRDL1ZyB8fQUmqkqkEJ1kQ7m/ouXqpFdI0
 SGMLSunbEe/SvJkrIpPYJ4v2rbmo3Up9ijKUPjtdezcAtkEoR89cz43FTll1fg1brw0F
 6kLNRUCmzthcyrKeAfTumJ6Ed3wbdJ9oD0lc9BqK4GzcvYMYxJK8li9sEvAT8lc8rh4F
 m6D5AsFbOGacqNPsm3vVkeksodqJVvd/N4wTXGCzZAztoEWBngfXU6eVC5V7tzBG9yjf
 XXOA==
X-Gm-Message-State: APjAAAWrsWSkRcBiH7ete8BYhnvneVNlhdLBHwrx0M6VViTQNbVj2z8I
 q40g+VaZnnCoOUXr5PCZpDg=
X-Google-Smtp-Source: APXvYqz7D26S5KhfLyOZ7DTDhH1KOVX0vKMPUdpl7TWEzbYHq4ndCBBV1+edKfjC/YNwoVxDiHQkUw==
X-Received: by 2002:a54:4f09:: with SMTP id e9mr4033683oiy.89.1562889281737;
 Thu, 11 Jul 2019 16:54:41 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 65sm2586450otw.2.2019.07.11.16.54.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 16:54:41 -0700 (PDT)
Subject: Re: [PATCH rfc 4/6] nvme-cli: expand --device argument processing
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-5-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a7387cde-a948-c72a-7878-6b25bdeeba37@grimberg.me>
Date: Thu, 11 Jul 2019 16:54:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710232740.26734-5-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_165443_140714_9042714E 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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


> The connect-all --device argument was used to specify a specific device
> to be used as the discovery controller. The device is typically a
> long-lived discovery controller that posted a discovery event.
> No attempt was made to ensure the device is who it is supposed to be
> before using it.
> 
> Revised the code to use the other arguments in the connect-all request
> to validate that the device is the entity that was expected. If the
> device doesn't match, the cli will look for an existing matching device
> (will be a discovery controller due to nqn) with the same connect
> parameters and use it.  If one is not found on the system, a new
> discovery controller will be created for the connect-all request.

Remind me James, this is to protect the case where the discovery
controller is deleted and a new one was added instead?

> To implement this:
> - The code that existed in the subsystem listing that gathers
>    controller data is split into a service routine that gets a
>    controllers info. The subsystem routine uses the new routine.

Separate patch

> - The controller list element is extended to have the connect
>    argument fields, and the new routine extended to set the > - As the routine may be called independently of a subsystem,
>    the new routine obtains the subsysnqn.

Squashed with the first patch.

> - A simple parse routine was created to search for the connect
>    tokens in a connect-all string or the address string for a
>    controller.
> - a new struct was added containing connect args. This is used
>    for subsequent searches and matches.

Separate patch?

> - A new routine was created that compares the new connect arg
>    struct vs a controller list entry's connect args.

Separate patch?

> - A new routine was created that loops through all controllers
>    and attempts to match a controller to a set of connect
>    args passed in to search for.

Separate patch?

> - The --device handling was augmented to extract the connect
>    args from the connect-all request, attempt to match the
>    device vs the args, and if no match, looks for a match on
>    the system. If not match, the default path will create a
>    new discovery controller instance (non-persistent).

Final patch?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
