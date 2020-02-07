Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6789E155F03
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Feb 2020 21:03:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=P8WBQaD5eJiYBxhYdQdDWYQXL
	waIkb6MM0x2EO66sgNYQNg1aKdet2PSyoBC6WEkBv96ddV/ZYuxK5UcpW1ZkVkdvMm6My/U79L7Wl
	DJpzozQZSq5mH9MixXyx04SHX7WkaQFfjHZdyMvJdYsT9mlGx9zI8roYXYB6gOhuiqxX+YJ1jODQu
	7oBgyYoKRkp74d3vNch4PqK06hVoS2IKecDmoeE1qWQ3KApFkS84Arbu7DkqSoIEYycHsThwAGPpg
	B/fEOIvYJ4uTqDKqIu7tmhAT+okYcBfYhx7rIv0S/FSjUWtA5WC9wGLUJyqSjleXqdIYOW1c/ni6U
	bMeQavjeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j09qs-0004MG-Ry; Fri, 07 Feb 2020 20:03:46 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j09qh-0004KH-Jh
 for linux-nvme@lists.infradead.org; Fri, 07 Feb 2020 20:03:38 +0000
Received: by mail-ot1-f44.google.com with SMTP id z9so491145oth.5
 for <linux-nvme@lists.infradead.org>; Fri, 07 Feb 2020 12:03:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=l3cJyNThm4kGIkJ1nVLHyaFi/YLajyF6oWrGL6liKU9U1VEDGRNsHwcnomalye7SlV
 tOG+ArPpvPIR5Eb7DYBQvlmC7aVTFeLJyCFzI2Z/yFP3nMjYI/2TeGmXusgi/Yu5wgeC
 I/MTmAOqtNOBbdXiu2QEadt64Ntf4HOijsgN+OwGccOZWH2wYd8Y+EzPBu8cnItRZpT+
 bycwU2ECIJnyB460E6d4XPYzRFLb6eCHKvNMU4mPGNTvNi65Tj59jmkushV5d7PPdgaQ
 vhwWCkGQKIpUdCrmvUwlkMUQD38o3pgkJs1it2Ircs7M0C+y1P6+CZzZmArHbN0ju+mv
 ypDQ==
X-Gm-Message-State: APjAAAVh6b3F1Kkd8zJbNx0Uylk9hANdSUladKPfUxdMbWPF8AVZAtyz
 8fbc4vu1CSEEmh9gklRa8K8=
X-Google-Smtp-Source: APXvYqxyuYnVPKhXZ9w+NycE7GbFb2dDWksvGlfb67ZYG55vclRw9AIiX0Fth1kGBf9LRBOGHmpxEQ==
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr827241otr.82.1581105814589; 
 Fri, 07 Feb 2020 12:03:34 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id z17sm1342406oic.15.2020.02.07.12.03.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Feb 2020 12:03:33 -0800 (PST)
Subject: Re: [PATCH 1/2] nvmet: Fix error print message at nvmet_install_queue
 function
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
References: <1580819890-11455-1-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <505c404d-e156-9e2c-e184-d171ff9d9314@grimberg.me>
Date: Fri, 7 Feb 2020 12:03:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1580819890-11455-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_120335_677034_3336DEAB 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
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
Cc: Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
