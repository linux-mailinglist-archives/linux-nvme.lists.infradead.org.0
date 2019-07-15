Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2B3699A3
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 19:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TUROGwlqb+cTnjVHocTxNydQ/Ensps8MOH4iyp4GSfc=; b=h2bBzzQRO6yNsVDwQb4ZsceOi
	rYdufrSdhCQ/bPOBTgCjViWAUqXSOfshfiaZTS+6gNOWRaIKH2xEpj8syyHk+cD0Hq9wr6rO3nCa/
	S8hdluepzlcy+nfmE4sawXc9E0I1dGtkg6XimoTLoaXWmd0ntYT3xmQKLFGX7hLQmDt053Z/M4Xoh
	M8BU/fwJ9xpjEy8kmHZRH/PHEVedh4QWb5KtGuUvWQ/55vg2DX1i+FqotO1sBhhYWMqcDPzwvsR2h
	L0iMuCbWetbZ/wlSUDKmJ88d0SUdhktRq4tNWrYKHbtxU8qXUxacb8tgc5Gt36aZ7Lj81KXUmN3fh
	Si4uO573w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4ed-0005p8-Qf; Mon, 15 Jul 2019 17:20:48 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4eT-0005og-Uh
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 17:20:39 +0000
Received: by mail-ot1-f66.google.com with SMTP id l15so17826538otn.9
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 10:20:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dXTrlxPrQFMSa7Lo3yE5gLhfRnI7i+Fh50PMvVK2y2A=;
 b=VW0sqldA87Bmo1lWCZuNDhz87spG4VQCzYT3Rds0xE5nHKEx/P/g9DyDeOz0j2g0N8
 GSogXlnfzSSrYyWa99Omz0g1TM3LnzPmJ2/Pytwg2UrgO4kzHdbdV5LEdpsUOQaQ/vpm
 1hduFF4oK9uN1Msd9sDcCmfkJYvlTEdUHYWK4yDfFvhvPW+iseAjK4/dnXjDAggCNwOL
 xjjrKVuzgIHhxkh0KwwtlWSzk2ZY+qo2ZbqUUFXzKm9N4CdS4z5mzq/F58e7WhwxCA6O
 lacd7yU3RahMirgDOf2tiN4HrrzD6rON1IGfxKPhK3R0FjJqZjSQv+UfM8uv1nUnLXL/
 wKyA==
X-Gm-Message-State: APjAAAVfA+qywOosA9hHCmaYlNVQbE2VZtkUtefnDL400awvWQOfgbIb
 wz0c7MNE5vI0hGyuZN2P0Vs=
X-Google-Smtp-Source: APXvYqzCWa7qO6l5VrbzmSSnfnb6hJniEaP11XI70mkIDej/+I/CA3B3fNKHaNytGCvlTIpW4UzOQA==
X-Received: by 2002:a9d:57c6:: with SMTP id q6mr1313529oti.17.1563211236031;
 Mon, 15 Jul 2019 10:20:36 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w13sm5747246oih.17.2019.07.15.10.20.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:20:35 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <james.smart@broadcom.com>, James Smart
 <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
 <a97cd8d1-b36f-828f-12b7-975d3fe219ca@grimberg.me>
 <e57dd0cb-2ef0-4705-083a-ac81cffeb0d2@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <42a68b7d-a593-b5ca-c7cf-1e5569fee5bb@grimberg.me>
Date: Mon, 15 Jul 2019 10:20:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <e57dd0cb-2ef0-4705-083a-ac81cffeb0d2@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102037_991483_F5E27B50 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> On 7/12/2019 10:26 AM, Sagi Grimberg wrote:
>>
>>> +ExecStart=/bin/sh -c "/usr/sbin/nvme connect-all `/usr/bin/echo -e 
>>> $CONNECT_ARGS`"
>>
>> Lets lose the nvme full path, sh allows us to have that (can be in
>> /usr/local/sbin or somewhere else). and not /bin/echo?
> 
> For nvme, echo or both ?

For nvme for sure, for echo, it should always be in /bin/echo so
whatever you prefer.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
