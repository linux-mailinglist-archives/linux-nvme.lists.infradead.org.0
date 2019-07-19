Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFEC6D7CC
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=D8uGK+xsXTJ2TYnZTb9kbdQrw
	vKLa3Twh2szkhBKosTCsIQGnfkZHFrM3xE0Z1EmJN9E96MCLS7oih3fLqOpVuNpOLX89v3Sxnlh7L
	G4DSSGkFZJl3gu7mXlffsCDQdCkBEaRsChiVc5x/i8wGPivqHF+zrKhCb45N+fa0ls/p8FmpzuelL
	dBc2GLS3RZnIK+NGfyLxCj/Vr37Jm52Ew4gcErC1E1crjWzVKqllroGD/opZzmMFE6i/bchmiPfyI
	YUt1zeSm9D4v6IdG4/uXJ894G5QbtF/FL0+0pdTzhGePWVKguhfg739fqg8HDrh4MBkr7QwI/UUxZ
	zO0ygZLOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGr1-0002gW-8k; Fri, 19 Jul 2019 00:34:31 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGqr-0002g8-Es
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:34:22 +0000
Received: by mail-ot1-f43.google.com with SMTP id r21so24963369otq.6
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 17:34:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=Wuu3lwyM5HWIFO5A1hTMDl1J7+H+BNb4LJNXOUtHpKX654RNNgmr8eLscoMiSyDqjX
 G5497Bn9kv3n1o4OCHaFRV27sxlVgfbLuWKuNH/awrMZz00lxM2FnzWJuavf5zdnwY0B
 R5fOyKJ21jXFJKscPq2O368fj0ksJ8FKcJ+DKj+rBor21gwsfchR7eaopoxJishuERyk
 BDmdLUc784VuAecVYfYBN/698y8PyPgFiOS57zJH66tiqSB/CeYdqZkE+kExxbqrTzKu
 MDYfe9bKdlfZQ725WWsrJx7TNsw8oteCwXx/X5GT/lNfr5DIbA3p+dS0jrurulX8BKfz
 qIQA==
X-Gm-Message-State: APjAAAW1vETMkSfOrkk+v4Bh+rLtGyw30Lo7SsNuaTiKmhlaQF2efkkl
 6C9KDK9bTzQI5on6woVfcFs=
X-Google-Smtp-Source: APXvYqxwm+VOUuyV/9NXoByQinZgzlKPLxbeB7znl4GHh6RGcZvC6tnNJ125qPK81I0ndSOkRi28dw==
X-Received: by 2002:a9d:4d0b:: with SMTP id n11mr38964011otf.229.1563496460587; 
 Thu, 18 Jul 2019 17:34:20 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 93sm10154980ota.77.2019.07.18.17.34.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:34:19 -0700 (PDT)
Subject: Re: [PATCH 05/10] nvme-cli: extend ctrl_list_item for connect
 attributes
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-6-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d3e0a64a-e7a5-284c-564e-f3c81443aec6@grimberg.me>
Date: Thu, 18 Jul 2019 17:34:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716211241.7650-6-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_173421_495674_63091B6A 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.43 listed in wl.mailspike.net]
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
