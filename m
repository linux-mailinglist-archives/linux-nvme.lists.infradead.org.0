Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1956D850
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 03:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R8VXecou5OohMUzKE2IhOdJr1h4DjMh36KwA7SVwC4g=; b=npVhKV9Vbm2Hv3rzRT+tu7su2
	UXTklqoUCx45KtalxTehNq3q/87PTyueb+S/hd3fjpkFofKEzXs6VOcxD5Ws7DeYEk6eBZ+k3pMym
	JUGWTUVNWpEC4Ej9PQdI/pt6CmlgTO84I4K+e1bdXharmd2ZY0hRnTpwfl18LOwYDhuOo+x5Lwpd6
	EebHqp2NLH9nEks7pJsBglWk6JkoCx0E7gLHLhUojIRqmB89kM36OLQ2cAcv4W3D8/wMyPvUR9u7k
	J5t45lb1LfeZQYsAIf9ol8HP+ClRXfq1xO0KpDg+pBUj0x4xAKcUZo+IHkdKo5RSsNeSfa9LC3v+H
	vEo2Xeosw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoHZu-0002sG-TU; Fri, 19 Jul 2019 01:20:54 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoHZm-0002rb-Qg
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 01:20:48 +0000
Received: by mail-oi1-x242.google.com with SMTP id g7so23046120oia.8
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 18:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KT1MhPvP2yDUbhqQgsjF/Vrhs5O1fEJGwJYkZiz6Vdk=;
 b=rracO4S/2FbZ8E6CzQ/VSltRUSUDwpyFDzd/P2NmvSe59PZNF2wIL/Bqr/8aUF0CgY
 8ZU9NfpPxFZ2aVFgxf4xf7TrfzRNGPIswbPhOf3lrEx2BQnkTAdbx01yGxRwRWDGzZNs
 4opaIrsnrrZBCS4uaO5Q7wTp5xErtPmgNTYfVg9qIY6aZBVB7Fy72c7zkjfBH8PcwqeY
 5vJwvOVDBQZTrY7jAuAKShf+Y2ijhNrTHzfsdO7xCvKGanLngNA7KxuImnINDic69lP1
 0oG4aSAotUlrFHKIoTMw5mui89zzIXugnF/xRm+Igp0ht6T9S65BpPU1zDGHQE6r94qF
 UsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KT1MhPvP2yDUbhqQgsjF/Vrhs5O1fEJGwJYkZiz6Vdk=;
 b=OjuxcFJojRibiGPcZn9TmLjE6bS7yZYWqD+uf946k9scx+UTp3MHLgJG4phki0AyXV
 hkWQy+2bfFEi9bYKABo/ivfp6tfKm65Jt9QDAiYlrPYml8i5EycLAdR569+Zuvb2njtg
 /XVs8m/bjN8rGihAyrxl0pE3YXGET5lsuGu0N4WXR9Ic4olHcENGfdvzhOG14Jvh3ssH
 gfmQFOXZ32Ke4YYGbgnbd1abDnD6G7eji8eALpDJSHGLs8EzBBHplKssxsV5QJ+E07H1
 hJfr4YSz/dXuH72aNjB1ZNg3KZApqHoBVHcj0sin3nWVrpUq+QGSNTKExkxXtyf0Eh/8
 bgIg==
X-Gm-Message-State: APjAAAVwjAJWuvmNH1zXwR4xOlsI80CYwoTG7c7ahTN5DGjFW59nqNBA
 lBzYNQBwjR+gpQPMlX1GQZWdTZ2v
X-Google-Smtp-Source: APXvYqwTHNzcssrz4oxD+OtNKvlp9ztoZgiq1oUGqKO2GHct0VcU50QliFijl6fa+H+YW1gaf8de9g==
X-Received: by 2002:aca:3787:: with SMTP id
 e129mr25862542oia.145.1563499242550; 
 Thu, 18 Jul 2019 18:20:42 -0700 (PDT)
Received: from [192.168.1.237] (ip68-5-145-143.oc.oc.cox.net. [68.5.145.143])
 by smtp.gmail.com with ESMTPSA id
 l13sm10801596ota.17.2019.07.18.18.20.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 18:20:41 -0700 (PDT)
Subject: Re: [PATCH 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-11-jsmart2021@gmail.com>
 <2bd2a068-dbbd-84e8-250e-d9d4afa640d3@suse.de>
 <5669f502-e931-d0ed-71f7-91d3fca01816@grimberg.me>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <3a2ddff8-d900-1eee-2179-43539fcc1383@gmail.com>
Date: Thu, 18 Jul 2019 18:20:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5669f502-e931-d0ed-71f7-91d3fca01816@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_182046_881330_14FE2EE7 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 7/18/2019 5:33 PM, Sagi Grimberg wrote:
> 
>> The install sequence is slightly odd, but not enough to complain.
> 
> Whats odd the udevadm vs. systemctl?
> 
>> (udevadm trigger before systemd daemon-reload? I'd rather do it the
>> other way round. Anyway.)
> 
> Why? just out of curiosity?

I assume it's - if you load udev first, it can trigger systemd services 
that don't exit yet. Thus cleaner to have systemd setup then udev 
enabled to call it.

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
