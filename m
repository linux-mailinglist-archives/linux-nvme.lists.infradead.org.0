Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFB731695
	for <lists+linux-nvme@lfdr.de>; Fri, 31 May 2019 23:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=67+8xIHyCtSCAwQyo19jL/OEz5O20isj6hn8P/RIPqU=; b=A1Xq0RpE6gBt9ahMAhoZa6idk
	86s3nw9bRuXOs12l17lUA4ASRRfmgN2hps2WDVcp/Ky9sPCJMAJg95hdhYWS5ZE49PfAD97nb6z25
	ksN7VIkyLN3/4DDROTR2Dsf+8+xwfNu0TCs5gRUXXTCFevubv8hxurx+KLoynxlDdF1Hw1gibcCUi
	fkcsFujWfzAMlet2Mn3YfhGmEQ8NNkOarRi5bE1uqaXTUEUlKo1/Y7s8qEWyMaltWwGboo9OokW78
	Qo+KxxnuLW7q/ezP160M54BQoMYvrpoYCtHwvenEx9caM4jc6oRZ9YzUSUpTTPj4JuhtD9hyeESE0
	TnI/CYV8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWp1M-0000E5-LF; Fri, 31 May 2019 21:25:04 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWp1G-0000Dg-FR
 for linux-nvme@lists.infradead.org; Fri, 31 May 2019 21:24:59 +0000
Received: by mail-pl1-x635.google.com with SMTP id g21so4505855plq.0
 for <linux-nvme@lists.infradead.org>; Fri, 31 May 2019 14:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=3hPZynDLn/9Ce4r4Efp4qfGZMqhrf9psrUmNdDTkxso=;
 b=J7mNCY0qDMyhDRDl7hsPDiL0GJPaAnmgnsNxtJ5CkcKFrwUI54oIFGikjATQ+5eEud
 aSZt6ENcxpknf6aHyiexERxoS8WKI96oDGjKHHLR6ZzVNUTMUobvpFg0+6IN7TeHTc1g
 ZKacRh9xV1PFCCF4K1J2EjjlBaxkOAb+BKzFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=3hPZynDLn/9Ce4r4Efp4qfGZMqhrf9psrUmNdDTkxso=;
 b=n6YEhI34PZExshunS+uGeBFkQ4S69M+ccAZOTjTZYiFH5c3fWs4udI82GttnLuq90/
 zrxvrQCxo0ZWnSghXHdlaLAWyqxc9V9MTXZ3Il3RN+ajmoJtBf448B0L1Q8JeARcEMVy
 +AFGWpPNTd3gVzxsxmmT+D5+nHpfK/92naIV1pImnjtslBF0LeIjw7O59k6HG4vwZY4q
 6CGMrev3Aeri7iXTLchzMApjBj094tpVrHNN/pIma3A+CRsnCyV7Rrg74abNxQOxStFw
 VOc49SmXanAZDYJ7tyGsFw8VCGSa7/M3tFM/E4M31mbz0E500i8I5XR9BF3qKFIf/qdd
 eRWQ==
X-Gm-Message-State: APjAAAWQBL9Bbuw+VgxqhvQjHi0lOGvA1BbHWEoEzpAXCC6SY3Vq7ud0
 9tm7hmzQgKjRFYTSDI4mtmGfU19t+opi4ErUODVJEFL1zP34X3Ns0Tw65znsHnMsBiBkMGuz73/
 cuipvE6JeENjA126A3RKIJYafFalmiT36mdu8XUhtHevU471EK4/5DibVUK2LjwsA02d7JfkLm1
 wsS3P8/w==
X-Google-Smtp-Source: APXvYqwJ1zYktYIYju/6fWK7nR59ZaSV2fZrzOWnlM23w8oJl9jb+zx0rd77QgvddosCoE8/dpL8XA==
X-Received: by 2002:a17:902:f81:: with SMTP id
 1mr12228330plz.242.1559337896906; 
 Fri, 31 May 2019 14:24:56 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o192sm216248pgo.74.2019.05.31.14.24.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 14:24:56 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.2
To: Sagi Grimberg <sagi@grimberg.me>,
 John Donnelly <john.p.donnelly@oracle.com>
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
 <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
 <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
 <18AE3540-5173-4A25-A28E-F0B644BA0AAF@oracle.com>
 <4cab00ed-e56f-f963-921d-87d5156eea63@grimberg.me>
 <12ddd385-22a3-d109-7997-31d7ed4f0ee6@broadcom.com>
 <23ef6a83-e6d0-e870-d68e-2f891c5aec8f@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <49fbc24d-5349-2794-931d-35c3a308fc06@broadcom.com>
Date: Fri, 31 May 2019 14:24:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <23ef6a83-e6d0-e870-d68e-2f891c5aec8f@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_142458_521726_C9E7E740 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8zMS8yMDE5IDk6NDcgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPj4gdG9vIG1hbnkg
bGVhcHMgYW5kIGJvdW5kcyBhcmUgYmVpbmcgc3RhdGVkIHdoZW4gdGhlIGJhc2Ugc291cmNlcyAK
Pj4gYXJlbid0IGNvbnNpc3RlbnQuwqDCoCBUaGluZ3Mgd29yayB3aGVuIGFsbCB0aGUgZGVwZW5k
ZW5jaWVzIGFyZSBwdXQgCj4+IHRvZ2V0aGVyLiBXaGVuIGJpdHMgYXJlIGNoZXJyeSBwaWNrZWQg
LSBpdCdzIGEgYiojJUAgdG8gZmlndXJlIG91dCAKPj4gd2hpY2ggcGllY2UgaXMgbWlzc2luZyB0
byBnZXQgZXZlcnl0aGluZyB3b3JraW5nIHRvZ2V0aGVyLgo+Cj4KPiBEaWRuJ3QgcmVhbGl6ZSB0
aGF0IHRoaXMgd2FzIG5vdCB1cHN0cmVhbSB0ZXN0ZWQuLiBTbyBpbiB1cHN0cmVhbSB3ZSBhcmUK
PiBnb29kPwoKQUZBSUsgLSB0aGVyZSBpcyBwbGVudHkgb2Ygc3VjY2VzcyBlbHNld2hlcmUuCgot
LSBqYW1lcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
