Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E1CF98F2
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 19:39:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=HXEZM6PDo8/6YW9plbcohnmz7
	G7m9KVK42BzEfcF74u0x/yypEiq16UqOv8MtAP4XjPd2jeyAHPYBME2pU9jT6W5iyDTILvl+3/hXr
	1dgFJXZGPlKrPsDbIUmSqD4aSNxZ2QbNO6crDcQ4wNc6wz4OnlkzrdOBHihKOU6o16hu5s0k2YaH9
	Vo9jAixyO2rWOdYOOM7BwLDIQUZC6FsWh+LxBXvbLx6/4q8vw6YqIAZyK7JkVGy83V06HP9TczpAM
	I9xi3UscNlHnh3kV/leVk+/I5zgQ0elEKF7gsIFBEsRiJYN5Ok2tmOD/mbnQtRfPgq52XyDZlF8C4
	lOssJiiHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUb4a-0002eM-4k; Tue, 12 Nov 2019 18:39:28 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUb4U-0002bB-L7
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 18:39:23 +0000
Received: by mail-oi1-f193.google.com with SMTP id v138so15749948oif.6
 for <linux-nvme@lists.infradead.org>; Tue, 12 Nov 2019 10:39:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=p5RHqSiaI++aHQe7yJl5xE4AYa1ROS6Klk2dvLzrS6EC/syfhS8acoNGlzkQZWC58Y
 SuGG9emKO78LmdNW2MvISE49qHVslKIrm7dQk4kj3kCMaJYHtPMy/pfxwWIK10FruLLZ
 5a5dGjw2w1aTBAFTZjKrS56Jf4PC4XmKzGRD83lSj2HSybcEgHVOVbF1uK7sEmHRaWJJ
 ZFy3L1VsaDTJ+iDLp0yHNeiMLZD3I+aaX4HTHMH/dxp72pVFrdPgSOqwsQ2GeeKkqh5V
 L3e5wHDcAiuGjXSDABr44hz1g/+rab7gG+q4MjWEYGilg1TevvFX5CWPGo94NaO3YX9u
 V98Q==
X-Gm-Message-State: APjAAAU8lkGPoUBduJ7DU/wzWXRral0Yi1RfuFuqFGhUFkrogNYjho9W
 NsUEaWwWCRqP8eTBFyyBDAk=
X-Google-Smtp-Source: APXvYqz3jJtfkszQkWhkLGf1kKkKW6CqcPM72QqDF8nus0Vq2pblAmtwzsCJuXhic9EKDHeTw5NIDg==
X-Received: by 2002:aca:dd84:: with SMTP id u126mr344269oig.90.1573583962055; 
 Tue, 12 Nov 2019 10:39:22 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 18sm4205324oip.57.2019.11.12.10.39.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 10:39:21 -0800 (PST)
Subject: Re: [PATCH 09/15] nvmet: Rename nvmet_rw_len to nvmet_rw_data_len
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-11-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2ace82b6-4a6c-6ff7-e236-617872eeb6a1@grimberg.me>
Date: Tue, 12 Nov 2019 10:39:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105162026.183901-11-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_103922_685431_D32C821B 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: israelr@mellanox.com, oren@mellanox.com, idanb@mellanox.com,
 vladimirk@mellanox.com, shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
