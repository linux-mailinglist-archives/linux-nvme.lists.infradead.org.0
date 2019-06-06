Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DB036897
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 02:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jYAlWRjFkZaWPK1SS9T6fgG7rhxYTQU860QK5iJ49uQ=; b=LZ0IDEBtTkB3Dmgbg2kgtGguH
	vXjT5+oXDgMcHqSwG1j0I1DqlVGRY8knt2Hxbm6tbTPli47skcE/HZevLbCRPz1ruGe5v2RCn+X/U
	46d1NRIBbaSfxmyOTdAlsDQHxKjrj/gAtuMI4DwQexgHE04PDta/sqVT0/uKYuzBKnhO5QsXBo3Vg
	+Q2mi5cgVjOryDN1OA7kyVGSu8CkPYT/2DekEt78cujV1ckCatoOXKdlDiuvun0nB7wBdiLAZzrX9
	RPT/er03eYB8bePAtt7y5ulx0pdRiToxMgZ1oc6xAj66vaZ2JqLe2B6X+JHFO5ymOKupoXvyjG1Vr
	9J85D9Ciw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYfur-0003UO-OZ; Thu, 06 Jun 2019 00:06:01 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYfum-0003U4-TG
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 00:05:58 +0000
Received: by mail-oi1-f194.google.com with SMTP id m206so314850oib.12
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 17:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aB9xU7lvCdR2zltcer0kqBuznChjrXc6ocaRsvFdlII=;
 b=G0XhD1OZhdxext94h/dzGanQ6uCjNi7uWcSiz2IFgfSWvROdc7HP0tu3kL+/7lUeNN
 k8G8PeKZaLldFbq/B/os6DCnsjIodjQl3g/Mqr5vZQzbSL8OL4zXHli0cFbUKCAH/zNX
 Tic6tZiweXDNaGGlxzmu2ov+OCiGMu1Ey01q2ZYO1Snl35JBpsX2kdWGqtgruFD2lCD3
 MIUI5v6jEa8P61UMCgBf3FiNs7kTSAGZHhytKE47bV4n4eUGL8zXO21uibFV5LfFxsJ0
 +dWjgYl39emzVLHrMv3UyYY0lerv8tMnWROuZcTN71kej2imXsiY7XShyR4jwmHVn3MO
 dodQ==
X-Gm-Message-State: APjAAAXlgX96ZqtnZ3Ni8xXBVt7+TCKUgpVlA+Jx05b48hVnZwgH2Ek2
 rw/hq1w4xXbLK+3//DQdtRK/IBMj
X-Google-Smtp-Source: APXvYqy5wCUSCD6BWmLceOhLRAdPu/R/QHOhy+RVhGlY8SEGnD3/gTv1wswSJggT9KMHM3QdS2gCsg==
X-Received: by 2002:aca:c584:: with SMTP id v126mr10420133oif.60.1559779554515; 
 Wed, 05 Jun 2019 17:05:54 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t206sm101897oig.30.2019.06.05.17.05.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 17:05:53 -0700 (PDT)
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
To: Alex Lyakas <alex@zadara.com>, linux-nvme@lists.infradead.org
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
Date: Wed, 5 Jun 2019 17:05:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_170556_945995_93E7D684 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Greetings NVMe community,
> 
> I am running kernel 5.1.6, which is the latest stable kernel.
> 
> I am testing a nvmf kernel target, configured on top of a bond 
> interface, for high availability. The bond interface is created on top 
> of two ConnectX-3 interfaces, which represent two ports of one 
> ConnectX-3 VF (with this hardware a VF is dual-ported, i.e., a single VF 
> yields two network interfaces). The bond is configured in active-backup 
> mode. Exact bonding configuration is given in [1]. The nvmet target 
> configuration doesn't have anything special and is given in [2].
> 
> I create a nvmf connection from a different machine to the nvmet target. 
> Then I initiate bond failover, by disconnecting a cable that corresponds 
> to the active bond slave. As a result, I get the following kernel panic:

Max sent a fix exactly for this. You can test that it works for you
when he sends v2.

Max, care to CC Alex when you send it?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
